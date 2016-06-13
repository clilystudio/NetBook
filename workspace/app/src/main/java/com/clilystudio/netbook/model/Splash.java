package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.Date;

public class Splash
        implements Serializable {
    private static final long serialVersionUID = -1994127725401600755L;
    private String _id;
    private Date end;
    private String img3x4;
    private String insideLink;
    private String link;
    private Date start;

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        Splash splash;
        if (object == null || !(object instanceof Splash) || (splash = (Splash) object).get_id() == null || !splash.get_id().equals(this.get_id())) {
            return false;
        }
        return true;
    }

    public Date getEnd() {
        return this.end;
    }

    public void setEnd(Date date) {
        this.end = date;
    }

    public String getImg3x4() {
        return this.img3x4;
    }

    public void setImg3x4(String string) {
        this.img3x4 = string;
    }

    public String getInsideLink() {
        return this.insideLink;
    }

    public void setInsideLink(String string) {
        this.insideLink = string;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String string) {
        this.link = string;
    }

    public Date getStart() {
        return this.start;
    }

    public void setStart(Date date) {
        this.start = date;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public int hashCode() {
        if (this.get_id() == null) {
            return 0;
        }
        return this.get_id().hashCode();
    }
}
