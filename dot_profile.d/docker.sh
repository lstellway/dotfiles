# Create a docker context to make use of this
# docker context create remote --description "Remote host" --docker "host=unix://${HOME}/.docker/remote.sock"

docker-remote() {
  local HOST="${1}"
  [ -n "${HOST}" ] || (echo "A host must be provided" && exit 1)

  DEST_PATH="${HOME}/.docker/remote.sock"
  trap "rm -f ${DEST_PATH}" SIGINT SIGTERM

  local REMOTE_SOCKET="${2:-/var/run/docker.sock}"
  ssh -L ${DEST_PATH}:${REMOTE_SOCKET} -N ${HOST}
  rm -f ${DEST_PATH}
}

