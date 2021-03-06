#!/usr/bin/env bash

blank='\e[0m'
white="\e[1m"
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
reset=$(tput sgr0)
check="✓"
cross="✗"
warn="⚠"

#########################################################
## Log file setup
#########################################################

disable_color() {
    # Replace all colors with reset codes
    red=${reset}
    green=${reset}
    yellow=${reset}
}

set_up_logging() {
    if [ ! -d "${log_dir}" ]; then
        mkdir "${log_dir}"
    fi

    log_file="${log_dir}"/iso-generator-"$(date +%d%m%y)".log

    # Remove existing logs and create a new one
    if [ -e "${log_file}" ]; then
        rm "${log_file}"
    fi

    touch "${log_file}"
}

log() {
    local entry
    read -r entry
    echo -e "$(date -u "+%d/%m/%Y %H:%M") : ${entry}" | tee -a "${log_file}"
}

#########################################################
## Log helpers
#########################################################

describe() {
    printf "%s" "$1"
    dots=${2:-3}
    for i in $(seq 1 "${dots}"); do sleep 0.035; printf "."; done
    sleep 0.035
}

log_warn() {
    message=${1:-"Warning"}
    log="${YELLOW}${WARN} ${message}${RESET}"
    printf " %s\n" "${log}"
    [ -f "$3" ] && printf "%s %s\n" "$2" "${log}" >> "$3"
}

log_failed() {
    message=${1:-"Failed"}
    log="${RED}${CROSS} ${message}${RESET}"
    printf " %s\n" "${log}"
    [ -f "$3" ] && printf "%s %s\n" "$2" "${log}" >> "$3"
}

log_success() {
    message=${1:-"Success"}
    log="${GREEN}${CHECK} ${message}${RESET}"
    printf " %s\n" "${log}"
    [ -f "$3" ] && printf "%s %s\n" "$2" "${log}" >> "$3"
}

