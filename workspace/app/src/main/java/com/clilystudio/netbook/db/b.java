package com.clilystudio.netbook.db;

import java.util.ArrayList;
import java.util.List;

public final class b {

    private static final String[] a = {"ALTER TABLE BookReadRecords ADD COLUMN localModifiedDate long;", "ALTER TABLE BookReadRecords ADD COLUMN account TEXT;", "ALTER TABLE BookReadRecords ADD COLUMN deleted INTEGER;", "UPDATE BookReadRecords SET deleted=0;"};
    private static final String[] b = {"ALTER TABLE BookReadRecords ADD COLUMN chapterCountAtFeed INTEGER;", "ALTER TABLE BookReadRecords ADD COLUMN chapterCountAtFeed INTEGER;", "ALTER TABLE BookReadRecords ADD COLUMN feeding INTEGER;", "ALTER TABLE BookReadRecords ADD COLUMN feedFat INTEGER;", "UPDATE BookReadRecords SET feeding=0;"};
    private static final String[] c = {"ALTER TABLE MixTocRecords ADD COLUMN prioritySource TEXT;"};
    private static final String[] d = {"ALTER TABLE BookReadRecords ADD COLUMN author TEXT;"};
    private static final String[] e = {"ALTER TABLE BookReadRecords ADD COLUMN referenceSource TEXT;"};
    private static final String[] f = {"ALTER TABLE BookTopicEnterRecord ADD COLUMN visit_count INTEGER;"};
    private static final String[] g = {"ALTER TABLE BookReadRecords ADD COLUMN readMode INTEGER;"};
    private static final String[] h = {"ALTER TABLE SourceRecord ADD COLUMN sogouMd TEXT;"};
    private static final String[] i = {"ALTER TABLE BookDlRecord ADD COLUMN progress INTEGER;"};
    private static final String[] j = {"ALTER TABLE BookReadRecords ADD COLUMN downloadedSource TEXT;"};
    private static final String[] k = {"ALTER TABLE BookReadRecords ADD COLUMN tocIndex INTEGER;", "ALTER TABLE BookReadRecords ADD COLUMN chapterTitle TEXT;"};
    private static final String[] l = {"ALTER TABLE SplashRecord ADD COLUMN isShow INTEGER;"};
    private static final String[] m = {"ALTER TABLE BookReadRecords ADD COLUMN readTime INTEGER;"};
    private static final String[] n = {"CREATE TABLE IF NOT EXISTS FollowRecord (id integer primary key AutoIncrement,userId varchar(20),followedId varchar(20));"};
    private static final String[] o = {"CREATE TABLE IF NOT EXISTS RetweenRecord (id integer primary key AutoIncrement,userId varchar(20),tweetId varchar(20));"};
    private static final String[] p = {"CREATE TABLE IF NOT EXISTS TweetCache (id integer primary key AutoIncrement,userId varchar(20),type int ,content varchar(200));"};
    private static final String[] q = {"CREATE TABLE IF NOT EXISTS AudioRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20),name varchar(20),desc varchar(20),imgUrl varchar(20),track int,lastUpdate long,updateReaded boolean);"};
    private static final String[] r = {"ALTER TABLE BookReadRecords ADD COLUMN lastActionTime long;"};
    private static final String[] s = {"ALTER TABLE BookReadRecords ADD COLUMN lastActionTime long;", "ALTER TABLE AudioRecord ADD COLUMN top boolean;", "ALTER TABLE AudioRecord ADD COLUMN lastRead long;"};
    private static final String[] t = {"ALTER TABLE BookReadRecords ADD COLUMN recommended boolean;"};
    private static final String[] u = {"ALTER TABLE BookReadRecords ADD COLUMN have_cp INTEGER default 0;"};
    private static final String[] v = {"CREATE TABLE IF NOT EXISTS BookSyncRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20), type int,updated long);"};

    public static List a() {
        Object Object1 = new ArrayList();

        ((List) Object1).add(new c(9, a));
        ((List) Object1).add(new c(13, b));
        ((List) Object1).add(new c(14, c));
        ((List) Object1).add(new c(15, d));
        ((List) Object1).add(new c(16, e));
        ((List) Object1).add(new c(17, f));
        ((List) Object1).add(new c(18, g));
        ((List) Object1).add(new c(21, h));
        ((List) Object1).add(new c(22, i));
        ((List) Object1).add(new c(23, j));
        ((List) Object1).add(new c(24, k));
        ((List) Object1).add(new c(34, l));
        ((List) Object1).add(new c(35, m));
        ((List) Object1).add(new c(36, n));
        ((List) Object1).add(new c(37, o));
        ((List) Object1).add(new c(38, p));
        ((List) Object1).add(new c(39, q));
        ((List) Object1).add(new c(40, r));
        ((List) Object1).add(new c(42, s));
        ((List) Object1).add(new c(43, t));
        ((List) Object1).add(new c(44, v));
        ((List) Object1).add(new c(45, u));
        return (List) Object1;
    }
}
