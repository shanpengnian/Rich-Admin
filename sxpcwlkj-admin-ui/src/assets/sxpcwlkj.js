export default {
    // 初始化分页
    iLikeYanggb() {
        return "OK"
    },
    /**
     * 是否是邮箱
     */
    isEmail(s) {
        return /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(s)
    },
    /**
     * 是否是手机号
     */
    isMobile(s) {
        return /^1[0-9]{10}$/.test(s)
    },
    /**
     * 是否是电话号
     */
    isPhone(s) {
        return /^([0-9]{3,4}-)?[0-9]{7,8}$/.test(s)
    },
    /**
     * 是否url地址
     */
    isURL(s) {
        return /^http[s]?:\/\/.*/.test(s)
    },
    /**
     * 是否字符串
     */
    isString(s) {
        return Object.prototype.toString.call().slice(8, -1) === 'String'
    },
    /**
    * 是否数字
    */
    isNumber(s) {
        return Object.prototype.toString.call().slice(8, -1) === 'Number'
    },
    /**
    * 是否boolean
    */
    isBoolean(s) {
        return Object.prototype.toString.call().slice(8, -1) === 'Boolean'
    },
    /**
    * 是否函数
    */
    isFunction(s) {
        return Object.prototype.toString.call().slice(8, -1) === 'Function'
    },
    /**
     * 判断是否为 Null Undefined ''
     * @param {*} s 
     */
    isNullAll(s){
        if(Object.prototype.toString.call(s).slice(8, -1) === 'Null'||Object.prototype.toString.call(s).slice(8, -1) === 'Undefined'||s.length===0){
            return true;
        }
        return false;
    },
    /**
    * 是否null
    */
    isNull(s) {
        return Object.prototype.toString.call(s).slice(8, -1) === 'Null'
    },
    /**
    * 是否undefined
    */
    isUndefined(s) {
        return Object.prototype.toString.call(s).slice(8, -1) === 'Undefined'
    },
    /**
    * 是否对象
    */
    isObj(s) {
        return Object.prototype.toString.call(s).slice(8, -1) === 'Object'
    },
    /**
    * 是否数组
    */
    isArray(s) {
        return Object.prototype.toString.call(s).slice(8, -1) === 'Array'
    },
    /**
    * 是否时间
    */
    isDate(s) {
        return Object.prototype.toString.call(s).slice(8, -1) === 'Date'
    },
    /**
    * 是否正则
    */
    isRegExp(s) {
        return Object.prototype.toString.call(s).slice(8, -1) === 'RegExp'
    },
    /**
    * 是否错误对象
    */
    isError(s) {
        return Object.prototype.toString.call(s).slice(8, -1) === 'Error'
    },
    /**
    * 是否是微信浏览器
    */
    isWeiXin() {
        return ua.match(/microMessenger/i) == 'micromessenger'
    },
    /**
    * 是否是移动端
    */
    isDeviceMobile(s) {
        return /android|webos|iphone|ipod|balckberry/i.test(ua)
    },
    /**
    * 是否ios
    */
    isIos(s) {
        var u = navigator.userAgent;
        if (u.indexOf('Android') > -1 || u.indexOf('Linux') > -1) { //安卓手机
            return false
        } else if (u.indexOf('iPhone') > -1) {//苹果手机
            return true
        } else if (u.indexOf('iPad') > -1) {//iPad
            return false
        } else if (u.indexOf('Windows Phone') > -1) {//winphone手机
            return false
        } else {
            return false
        }
    },
    /**
   * 是否是移动端
   */
    isPC() {
        var userAgentInfo = navigator.userAgent;
        var Agents = ["Android", "iPhone",
            "SymbianOS", "Windows Phone",
            "iPad", "iPod"];
        var flag = true;
        for (var v = 0; v < Agents.length; v++) {
            if (userAgentInfo.indexOf(Agents[v]) > 0) {
                flag = false;
                break;
            }
        }

    },
    /**
   * 去除html标签
   */
    removeHtmltag(s) {
        return s.replace(/<[^>]+>/g, '')
    },
    /**
     * 获取url参数
     */
    getQueryString(s) {
        const reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
        const search = window.location.search.split('?')[1] || '';
        const r = search.match(reg) || [];
        return r[2];

    },
    /**
   * 根据url地址下载
   */
    download(s) {
        var isChrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
        var isSafari = navigator.userAgent.toLowerCase().indexOf('safari') > -1;
        if (isChrome || isSafari) {
            var link = document.createElement('a');
            link.href = url;
            if (link.download !== undefined) {
                var fileName = url.substring(url.lastIndexOf('/') + 1, url.length);
                link.download = fileName;
            }
            if (document.createEvent) {
                var e = document.createEvent('MouseEvents');
                e.initEvent('click', true, true);
                link.dispatchEvent(e);
                return true;
            }
        }
    },
    /**
     * .el是否包含某个class
     * @param {*} el 
     * @param {*} className 
     * @returns 
     */
    hasClass(el, className) {
        let reg = new RegExp('(^|\\s)' + className + '(\\s|$)')
        return reg.test(el.className)
    },
    /**
     * .el添加某个class
     * @param {*} el 
     * @param {*} className 
     * @returns 
     */
    addClass(el, className) {
        if (hasClass(el, className)) {
            return
        }
        let newClass = el.className.split(' ')
        newClass.push(className)
        el.className = newClass.join(' ')
    },
    /**
     * .el去除某个class
     * @param {*} el 
     * @param {*} className 
     * @returns 
     */
    removeClass(el, className) {
        if (!hasClass(el, className)) {
            return
        }
        let reg = new RegExp('(^|\\s)' + className + '(\\s|$)', 'g')
        el.className = el.className.replace(reg, ' ')
    },
    /**
     * 范围随机数
     */
    random(min, max) {
        if (arguments.length === 2) {
            return Math.floor(min + Math.random() * ((max + 1) - min))
        } else {
            return null;
        }
    },
    /**
     * 将阿拉伯数字翻译成中文的大写数字
     *  
     */
    numberToChinese(num) {
        var AA = new Array("零", "一", "二", "三", "四", "五", "六", "七", "八", "九", "十");
        var BB = new Array("", "十", "百", "仟", "萬", "億", "点", "");
        var a = ("" + num).replace(/(^0*)/g, "").split("."),
            k = 0,
            re = "";
        for (var i = a[0].length - 1; i >= 0; i--) {
            switch (k) {
                case 0:
                    re = BB[7] + re;
                    break;
                case 4:
                    if (!new RegExp("0{4}//d{" + (a[0].length - i - 1) + "}$")
                        .test(a[0]))
                        re = BB[4] + re;
                    break;
                case 8:
                    re = BB[5] + re;
                    BB[7] = BB[5];
                    k = 0;
                    break;
            }
            if (k % 4 == 2 && a[0].charAt(i + 2) != 0 && a[0].charAt(i + 1) == 0)
                re = AA[0] + re;
            if (a[0].charAt(i) != 0)
                re = AA[a[0].charAt(i)] + BB[k % 4] + re;
            k++;
        }

        if (a.length > 1) // 加上小数部分(如果有小数部分)
        {
            re += BB[6];
            for (var i = 0; i < a[1].length; i++)
                re += AA[a[1].charAt(i)];
        }
        if (re == '一十')
            re = "十";
        if (re.match(/^一/) && re.length == 3)
            re = re.replace("一", "");
        return re;
    }
}