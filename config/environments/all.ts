import {IEnv} from "./IEnv";

export =<IEnv> {
    redis:'redis://192.168.99.100:6379',
    maxMessageCache:50,
    port : 8080,
    version:require('../../package.json').version,
    socketUrl:'http://localhost:8080'
}
