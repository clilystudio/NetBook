package com.clilystudio.netbook.reader.txt;

import android.util.Log;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.mixtoc.LocalTxtToc;
import com.clilystudio.netbook.util.CommonUtil;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class TocManager {
    private static final String[] a = new String[]{"\b*(第.+章)", "(\\d{3})\\s"};

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Toc getToc(String host) {
        Toc var1_1 = new Toc();
        var1_1.setHost(host);
        List<ChapterLink> var3_2 = TocManager.d(host);
        if (var3_2 != null && var3_2.size() != 0) {
            var1_1.setChapters(var3_2.toArray(new ChapterLink[var3_2.size()]));
            return var1_1;
        }
        try {
            for (int var5_4 = 0; var5_4 < 2; ++var5_4) {
                String var6_5 = TocManager.a[var5_4];
                BufferedReader var7_6 = CommonUtil.getBufferedReader(host);
                List<ChapterLink> var8_7 = new ArrayList<>();
                Pattern var9_8 = Pattern.compile(var6_5);
                int var10_9 = 0;
                int var11_10 = 0;
                int var12_11 = 0;
                String var13_12;
                while ((var13_12 = var7_6.readLine()) != null) {
                    Matcher var14_13 = var9_8.matcher(var13_12);
                    if (var14_13.find() && var14_13.groupCount() > 0) {
                        if (var8_7.size() > 0) {
                            ChapterLink var18_16 = var8_7.get(-1 + var8_7.size());
                            var18_16.setTxtCharLength(var11_10 - var18_16.getTxtCharOffset());
                        }
                        ChapterLink var16_15 = new ChapterLink();
                        var16_15.setUnreadble(false);
                        var16_15.setTitle(var14_13.group(1));
                        var16_15.setTxtLineOffset(var12_11);
                        var16_15.setTxtCharOffset(var11_10);
                        var8_7.add(var16_15);
                        var10_9 = var12_11;
                    }
                    if (var12_11 - var10_9 > 2000) {
                        var3_2 = new ArrayList<>();
                        break;
                    }
                    var11_10 += var13_12.length();
                    var12_11++;
                }
                if (var13_12 == null) {
                    if (var8_7.size() > 0) {
                        ChapterLink var19_17 = var8_7.get(-1 + var8_7.size());
                        var19_17.setTxtCharLength(var11_10 - var19_17.getTxtCharOffset());
                        TocManager.saveToc(var8_7, host);
                    }
                    var7_6.close();
                    var3_2 = var8_7;
                    var1_1.setChapters(var3_2.toArray(new ChapterLink[var3_2.size()]));
                    return var1_1;
                }
            }
            if (var3_2.size() == 0) {
                var3_2 = TocManager.loadChapterLinkList(host);
                if (var3_2 != null && var3_2.size() > 0) {
                    var1_1.setRealChapter(false);
                }
            }
            if (var3_2 != null) {
                var1_1.setChapters(var3_2.toArray(new ChapterLink[var3_2.size()]));
                return var1_1;
            } else {
                return null;
            }
        } catch (IOException e1) {
            return null;
        }
    }

    private static void saveToc(List<ChapterLink> list, String filePath) {
        try {
            String name = getFileName(filePath);
            if (name != null) {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(CommonUtil.makeDir(CachePathConst.TextToc), name)));
                objectOutputStream.writeObject(new LocalTxtToc(new File(filePath).length(), list));
                objectOutputStream.flush();
                objectOutputStream.close();
            }
        } catch (IOException var3_3) {
            var3_3.printStackTrace();
        }
    }

    public static String getFileName(String filePath) {
        String string2 = filePath.trim().substring(1 + filePath.lastIndexOf("/"));
        int n = string2.lastIndexOf(".");
        if (n != -1) {
            return string2.substring(0, n);
        } else {
            Log.e("", "FileNotFoundException");
            return null;
        }
    }

    private static List<ChapterLink> loadChapterLinkList(String host) {
        String string2;
        BufferedReader bufferedReader = CommonUtil.getBufferedReader(host);
        ArrayList<ChapterLink> arrayList = new ArrayList<>();
        int n = 1;
        int n2 = 0;
        int n3 = 0;
        try {
            while ((string2 = bufferedReader.readLine()) != null) {
                int n4;
                if (n2 >= n * 5000 || n3 == 0) {
                    if (arrayList.size() > 0) {
                        ChapterLink chapterLink = arrayList.get(-1 + arrayList.size());
                        chapterLink.setTxtCharLength(n2 - chapterLink.getTxtCharOffset());
                    }
                    ChapterLink chapterLink = new ChapterLink();
                    chapterLink.setUnreadble(false);
                    chapterLink.setTitle("\u7b2c" + n + "\u8282");
                    chapterLink.setTxtCharOffset(n2);
                    chapterLink.setTxtLineOffset(n3);
                    arrayList.add(chapterLink);
                    n4 = n + 1;
                } else {
                    n4 = n;
                }
                ++n3;
                n2 += string2.length();
                n = n4;
            }
            if (arrayList.size() > 0) {
                ChapterLink chapterLink = arrayList.get(-1 + arrayList.size());
                chapterLink.setTxtCharLength(n2 - chapterLink.getTxtCharOffset());
                TocManager.saveToc(arrayList, host);
            }
            bufferedReader.close();
            return arrayList;
        } catch (IOException e1) {
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static List<ChapterLink> d(String host) {
        File file;
        String name = TocManager.getFileName(host);
        if (name != null) {
            file = new File(CommonUtil.makeDir(CachePathConst.TextToc), name);
            if (!file.exists()) return null;
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file));
                LocalTxtToc localTxtToc = (LocalTxtToc) objectInputStream.readObject();
                objectInputStream.close();
                if (new File(host).length() == localTxtToc.getTxtFileLength()) {
                    return localTxtToc.getChapterLinks();
                }
                file.delete();
                return null;
            } catch (IOException | ClassNotFoundException var3_4) {
                var3_4.printStackTrace();
            }
        }
        return null;
    }
}
