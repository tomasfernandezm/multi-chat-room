import {IEnv} from "./IEnv";

export =<IEnv> {
    redis:`redis://${process.env.REDIS_URL}:${process.env.REDIS_PORT}`,
    maxMessageCache:50,
    port : 8080,
    version:require('../../package.json').version,
    socketUrl:`http://${process.env.SOCKET_URL}:${process.env.SOCKET_PORT}`
}
