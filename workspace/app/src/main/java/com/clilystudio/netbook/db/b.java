package com.clilystudio.netbook.db;

import java.util.ArrayList;
import java.util.List;

public final class b {
    private static final String[] a = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN localModifiedDate long;", "ALTER TABLE BookReadRecords ADD COLUMN account TEXT;", "ALTER TABLE BookReadRecords ADD COLUMN deleted INTEGER;", "UPDATE BookReadRecords SET deleted=0;"};
    private static final String[] b = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN chapterCountAtFeed INTEGER;", "ALTER TABLE BookReadRecords ADD COLUMN chapterCountAtFeed INTEGER;", "ALTER TABLE BookReadRecords ADD COLUMN feeding INTEGER;", "ALTER TABLE BookReadRecords ADD COLUMN feedFat INTEGER;", "UPDATE BookReadRecords SET feeding=0;"};
    private static final String[] c = new String[]{"ALTER TABLE MixTocRecords ADD COLUMN prioritySource TEXT;"};
    private static final String[] d = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN author TEXT;"};
    private static final String[] e = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN referenceSource TEXT;"};
    private static final String[] f = new String[]{"ALTER TABLE BookTopicEnterRecord ADD COLUMN visit_count INTEGER;"};
    private static final String[] g = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN readMode INTEGER;"};
    private static final String[] h = new String[]{"ALTER TABLE SourceRecord ADD COLUMN sogouMd TEXT;"};
    private static final String[] i = new String[]{"ALTER TABLE BookDlRecord ADD COLUMN progress INTEGER;"};
    private static final String[] j = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN downloadedSource TEXT;"};
    private static final String[] k = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN tocIndex INTEGER;", "ALTER TABLE BookReadRecords ADD COLUMN chapterTitle TEXT;"};
    private static final String[] l = new String[]{"ALTER TABLE SplashRecord ADD COLUMN isShow INTEGER;"};
    private static final String[] m = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN readTime INTEGER;"};
    private static final String[] n = new String[]{"CREATE TABLE IF NOT EXISTS FollowRecord (id integer primary key AutoIncrement,userId varchar(20),followedId varchar(20));"};
    private static final String[] o = new String[]{"CREATE TABLE IF NOT EXISTS RetweenRecord (id integer primary key AutoIncrement,userId varchar(20),tweetId varchar(20));"};
    private static final String[] p = new String[]{"CREATE TABLE IF NOT EXISTS TweetCache (id integer primary key AutoIncrement,userId varchar(20),type int ,content varchar(200));"};
    private static final String[] q = new String[]{"CREATE TABLE IF NOT EXISTS AudioRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20),name varchar(20),desc varchar(20),imgUrl varchar(20),track int,lastUpdate long,updateReaded boolean);"};
    private static final String[] r = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN lastActionTime long;"};
    private static final String[] s = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN lastActionTime long;", "ALTER TABLE AudioRecord ADD COLUMN top boolean;", "ALTER TABLE AudioRecord ADD COLUMN lastRead long;"};
    private static final String[] t = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN recommended boolean;"};
    private static final String[] u = new String[]{"ALTER TABLE BookReadRecords ADD COLUMN have_cp INTEGER default 0;"};
    private static final String[] v = new String[]{"CREATE TABLE IF NOT EXISTS BookSyncRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20), type int,updated long);"};

    public static List<c> a() {
        ArrayList<c> arrayList = new ArrayList<c>();
        arrayList.add(new c(9, a));
        arrayList.add(new c(13, b));
        arrayList.add(new c(14, c));
        arrayList.add(new c(15, d));
        arrayList.add(new c(16, e));
        arrayList.add(new c(17, f));
        arrayList.add(new c(18, g));
        arrayList.add(new c(21, h));
        arrayList.add(new c(22, i));
        arrayList.add(new c(23, j));
        arrayList.add(new c(24, k));
        arrayList.add(new c(34, l));
        arrayList.add(new c(35, m));
        arrayList.add(new c(36, n));
        arrayList.add(new c(37, o));
        arrayList.add(new c(38, p));
        arrayList.add(new c(39, q));
        arrayList.add(new c(40, r));
        arrayList.add(new c(42, s));
        arrayList.add(new c(43, t));
        arrayList.add(new c(44, v));
        arrayList.add(new c(45, u));
        return arrayList;
    }
}
