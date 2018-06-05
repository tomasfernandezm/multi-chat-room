import {IEnv} from "./IEnv";

export =<IEnv> {
    redis:'redis://localhost:6379',
    maxMessageCache:50,
    port : 8080,
    version:require('../../package.json').version,
    socketUrl:'http://localhost:8080'
}
