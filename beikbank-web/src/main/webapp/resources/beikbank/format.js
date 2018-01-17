/**
 * Created by hp on 2017/5/25.
 * 格式化工具
 */

/**
 * 页面显示金额
 * @param s 金额
 * @returns {string}
 */
function showMoney(s) {
    return fmoney(s, 2);
}

/**
 * 格式化金额
 * @param s 传入的float数字
 * @param n 希望返回小数点几位
 * @returns {string}
 */
function fmoney(s, n)
{
    n = n > 0 && n <= 20 ? n : 2;
    s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + "";
    var l = s.split(".")[0].split("").reverse(),
        r = s.split(".")[1];
    t = "";
    for(i = 0; i < l.length; i ++ )
    {
        t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : "");
    }
    return t.split("").reverse().join("") + "." + r;
}