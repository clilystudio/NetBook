package com.clilystudio.netbook.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;

import com.clilystudio.netbook.api.ApiService;

public class Follower implements Parcelable {

    public static final Parcelable$Creator CREATOR = new Follower$1();
    private String _id;
    private String avatar;
    private int followers;
    private int followings;
    private String nickname;
    private int tweets;
    public Follower(Parcel Parcel1) {
        _id = Parcel1.readString();
        avatar = Parcel1.readString();
        nickname = Parcel1.readString();
        followers = Parcel1.readInt();
        followings = Parcel1.readInt();
        tweets = Parcel1.readInt();
    }

    public Follower() {
    }

    public int describeContents() {
        return 0;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String String1) {
        avatar = String1;
    }

    public int getFollowers() {
        return followers;
    }

    public void setFollowers(int int1) {
        followers = int1;
    }

    public int getFollowings() {
        return followings;
    }

    public void setFollowings(int int1) {
        followings = int1;
    }

    public String getFullAvatar() {
        return new StringBuilder().append(ApiService.a).append(getAvatar()).toString();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String String1) {
        nickname = String1;
    }

    public int getTweets() {
        return tweets;
    }

    public void setTweets(int int1) {
        tweets = int1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }

    public void writeToParcel(Parcel Parcel1, int int2) {
        Parcel1.writeString(_id);
        Parcel1.writeString(avatar);
        Parcel1.writeString(nickname);
        Parcel1.writeInt(followers);
        Parcel1.writeInt(followings);
        Parcel1.writeInt(tweets);
    }
}
