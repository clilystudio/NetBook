package com.clilystudio.netbook.model;

import android.os.Parcel;
import android.os.Parcelable;

import com.clilystudio.netbook.api.ApiService;

public class Follower implements Parcelable {
    public static final Parcelable.Creator<Follower> CREATOR = new Parcelable.Creator<Follower>(){

        @Override
        public Follower createFromParcel(Parcel source) {
            return new Follower(source);
        }

        @Override
        public Follower[] newArray(int size) {
            return new Follower[size];
        }
    };
    private String _id;
    private String avatar;
    private int followers;
    private int followings;
    private String nickname;
    private int tweets;

    public Follower() {
    }

    public Follower(Parcel parcel) {
        this._id = parcel.readString();
        this.avatar = parcel.readString();
        this.nickname = parcel.readString();
        this.followers = parcel.readInt();
        this.followings = parcel.readInt();
        this.tweets = parcel.readInt();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String string) {
        this.avatar = string;
    }

    public int getFollowers() {
        return this.followers;
    }

    public void setFollowers(int n) {
        this.followers = n;
    }

    public int getFollowings() {
        return this.followings;
    }

    public void setFollowings(int n) {
        this.followings = n;
    }

    public String getFullAvatar() {
        return ApiService.mStaticsUrl + this.getAvatar();
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String string) {
        this.nickname = string;
    }

    public int getTweets() {
        return this.tweets;
    }

    public void setTweets(int n) {
        this.tweets = n;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        parcel.writeString(this._id);
        parcel.writeString(this.avatar);
        parcel.writeString(this.nickname);
        parcel.writeInt(this.followers);
        parcel.writeInt(this.followings);
        parcel.writeInt(this.tweets);
    }
}
