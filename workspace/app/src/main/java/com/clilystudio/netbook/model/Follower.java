package com.clilystudio.netbook.model;

import android.os.Parcel;
import android.os.Parcelable;

import com.clilystudio.netbook.api.ApiService;

public class Follower
        implements Parcelable {
    public static final Parcelable.Creator<Follower> CREATOR = new Follower
    .1();
    private String _id;
    private String avatar;
    private int followers;
    private int followings;
    private String nickname;
    private int tweets;

    public Follower() {
    }

    public Follower(Parcel paramParcel) {
        this._id = paramParcel.readString();
        this.avatar = paramParcel.readString();
        this.nickname = paramParcel.readString();
        this.followers = paramParcel.readInt();
        this.followings = paramParcel.readInt();
        this.tweets = paramParcel.readInt();
    }

    public int describeContents() {
        return 0;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String paramString) {
        this.avatar = paramString;
    }

    public int getFollowers() {
        return this.followers;
    }

    public void setFollowers(int paramInt) {
        this.followers = paramInt;
    }

    public int getFollowings() {
        return this.followings;
    }

    public void setFollowings(int paramInt) {
        this.followings = paramInt;
    }

    public String getFullAvatar() {
        return ApiService.a + getAvatar();
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String paramString) {
        this.nickname = paramString;
    }

    public int getTweets() {
        return this.tweets;
    }

    public void setTweets(int paramInt) {
        this.tweets = paramInt;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public void writeToParcel(Parcel paramParcel, int paramInt) {
        paramParcel.writeString(this._id);
        paramParcel.writeString(this.avatar);
        paramParcel.writeString(this.nickname);
        paramParcel.writeInt(this.followers);
        paramParcel.writeInt(this.followings);
        paramParcel.writeInt(this.tweets);
    }
}

