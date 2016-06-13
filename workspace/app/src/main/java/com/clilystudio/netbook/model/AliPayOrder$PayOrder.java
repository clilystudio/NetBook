package com.clilystudio.netbook.model;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class AliPayOrder$PayOrder {
    private String _input_charset;
    private String body;
    private String it_b_pay;
    private String notify_url;
    private String out_trade_no;
    private String partner;
    private String payment_type;
    private String seller_id;
    private String service;
    private String sign;
    private String sign_type;
    private String subject;
    private String total_fee;

    public String getBody() {
        return this.body;
    }

    public void setBody(String string) {
        this.body = string;
    }

    public String getIt_b_pay() {
        return this.it_b_pay;
    }

    public void setIt_b_pay(String string) {
        this.it_b_pay = string;
    }

    public String getNotify_url() {
        return this.notify_url;
    }

    public void setNotify_url(String string) {
        this.notify_url = string;
    }

    public String getOut_trade_no() {
        return this.out_trade_no;
    }

    public void setOut_trade_no(String string) {
        this.out_trade_no = string;
    }

    public String getPartner() {
        return this.partner;
    }

    public void setPartner(String string) {
        this.partner = string;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String getPayString() {
        String string = "_input_charset=\"" + this._input_charset + "\"";
        String string2 = string + "&body=\"" + this.body + "\"";
        String string3 = string2 + "&it_b_pay=\"" + this.it_b_pay + "\"";
        String string4 = string3 + "&notify_url=\"" + this.notify_url + "\"";
        String string5 = string4 + "&out_trade_no=\"" + this.out_trade_no + "\"";
        String string6 = string5 + "&partner=\"" + this.partner + "\"";
        String string7 = string6 + "&payment_type=\"" + this.payment_type + "\"";
        String string8 = string7 + "&seller_id=\"" + this.seller_id + "\"";
        String string9 = string8 + "&service=\"" + this.service + "\"";
        String string10 = string9 + "&subject=\"" + this.subject + "\"";
        String string11 = string10 + "&total_fee=\"" + this.total_fee + "\"";
        try {
            this.sign = URLEncoder.encode(this.sign, "UTF-8");
            do {
                return string11 + "&sign=\"" + this.sign + "\"&sign_type=\"" + this.sign_type + "\"";
                break;
            } while (true);
        } catch (UnsupportedEncodingException var12_12) {
            var12_12.printStackTrace();
            return string11 + "&sign=\"" + this.sign + "\"&sign_type=\"" + this.sign_type + "\"";
        }
    }

    public String getPayment_type() {
        return this.payment_type;
    }

    public void setPayment_type(String string) {
        this.payment_type = string;
    }

    public String getSeller_id() {
        return this.seller_id;
    }

    public void setSeller_id(String string) {
        this.seller_id = string;
    }

    public String getService() {
        return this.service;
    }

    public void setService(String string) {
        this.service = string;
    }

    public String getSign() {
        return this.sign;
    }

    public void setSign(String string) {
        this.sign = string;
    }

    public String getSign_type() {
        return this.sign_type;
    }

    public void setSign_type(String string) {
        this.sign_type = string;
    }

    public String getSubject() {
        return this.subject;
    }

    public void setSubject(String string) {
        this.subject = string;
    }

    public String getTotal_fee() {
        return this.total_fee;
    }

    public void setTotal_fee(String string) {
        this.total_fee = string;
    }

    public String get_input_charset() {
        return this._input_charset;
    }

    public void set_input_charset(String string) {
        this._input_charset = string;
    }
}
