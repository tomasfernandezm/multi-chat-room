import {IEnv} from "./IEnv";

export =<IEnv> {
    redis:'redis://redis:6379',
    maxMessageCache:50,
    port : 8080,
    version:require('../../package.json').version,
    socketUrl:'http://54.173.91.124:8080'
}
