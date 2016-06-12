package com.clilystudio.netbook.db;

import com.activeandroid.Model;

import java.io.File;
import java.util.Date;

public class BookFile extends Model {

    public String filePath;
    public String name;
    public float progress;
    public int progressChapterIndex;
    public int progressCharOffset;
    public String size;
    public boolean top;
    public Date updated;
    public BookFile(File File1) {
        name = File1.getName();
        size = com.clilystudio.netbook.hpay100.a.a.a(File1.length(), true);
        filePath = File1.getPath();
    }

    public BookFile() {
    }

    public boolean equals(Object Object1) {
        if (Object1 != null && Object1 instanceof BookFile) {
            BookFile BookFile2 = (BookFile) Object1;

            if (BookFile2.name != null && BookFile2.name.equals(name))
                return true;
        }
        return false;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String String1) {
        filePath = String1;
    }

    public int getIntSize() {
        int int2;

        try {
            int2 = Integer.parseInt(getSize());
        } catch (Exception Exception1) {
            return 0;
        }
        return int2;
    }

    public String getName() {
        return name;
    }

    public void setName(String String1) {
        name = String1;
    }

    public String getPathAndName() {
        return filePath;
    }

    public float getProgress() {
        return progress;
    }

    public void setProgress(float float1) {
        progress = float1;
    }

    public int getProgressChapterIndex() {
        return progressChapterIndex;
    }

    public void setProgressChapterIndex(int int1) {
        progressChapterIndex = int1;
    }

    public int getProgressCharOffset() {
        return progressCharOffset;
    }

    public void setProgressCharOffset(int int1) {
        progressCharOffset = int1;
    }

    public String getReadableProgress() {
        if (progress == 0.0F)
            return "0%";
        else {
            int int1 = (int) (100.0F * progress);

            if (int1 == 0)
                int1 = 1;
            return new StringBuilder().append(int1).append("%").toString();
        }
    }

    public String getSize() {
        return size;
    }

    public void setSize(String String1) {
        size = String1;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date Date1) {
        updated = Date1;
    }

    public int hashCode() {
        if (name != null)
            return name.hashCode();
        else
            return 0;
    }

    public boolean isTop() {
        return top;
    }

    public void setTop(boolean boolean1) {
        top = boolean1;
    }

    public String toString() {
        return getName();
    }
}
