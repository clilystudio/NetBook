.class public final Lcom/ushaqi/zhuishushenqi/reader/txt/U;
.super Ljava/lang/Object;
.source "SourceFile"
# static fields
.field private static final a:[Ljava/lang/String;
# direct methods
.method static constructor <clinit>()V
    .locals 3
    .prologue
    v0 = 0x2;
    new-array v0, v0, [Ljava/lang/String;
    v1 = 0x0;
    v2 = "\u0008*(\u7b2c.+\u7ae0)";
    v0[v1] = v2;
    v1 = 0x1;
    v2 = "(\\d{3})\\s";
    v0[v1] = v2;
    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->a:[Ljava/lang/String;
    return;
.end method
.method public static a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 13
    .prologue
    v3 = 0x0;
    v1 = new Toc();
    v1.<init>();
    v1.setHost(p0);
    :try_start_0
    v0 = Lcom/ushaqi/zhuishushenqi/reader/txt/U.d(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v2 = v0.size();
    if (v2 != 0) {
//       if-nez v2, :cond_6
    }
    :cond_0
    v8 = Lcom/ushaqi/zhuishushenqi/reader/txt/U;->a;
    v2 = v3;
    :goto_0
    v4 = 0x2;
    if (v2 >= v4) {
//       if-ge v2, v4, :cond_6
    }
    v0 = v8[v2];
    v9 = Lcom/arcsoft/hpay100/a/a.G(p0);
    v4 = new ArrayList();
    v4.<init>();
    v10 = Ljava/util/regex/Pattern.compile(v0);
    v0 = v3;
    v6 = v3;
    v5 = v3;
    :goto_1
    v11 = v9.readLine();
    if (v11 == 0) {
//       if-eqz v11, :cond_4
    }
    v7 = v10.matcher(v11);
    v12 = v7.find();
    if (v12 == 0) {
//       if-eqz v12, :cond_2
    }
    v12 = v7.groupCount();
    if (v12 <= 0) {
//       if-lez v12, :cond_2
    }
    v0 = v4.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_1
    }
    v0 = v4.size();
    v0 = v0 + -0x1;
    v0 = v4.get(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    v12 = v0.getTxtCharOffset();
    v12 = v6 - v12;
    v0.setTxtCharLength(v12);
    :cond_1
    v0 = new ChapterLink();
    v0.<init>();
    v12 = 0x0;
    v0.setUnreadble(v12);
    v12 = 0x1;
    v7 = v7.group(v12);
    v0.setTitle(v7);
    v0.setTxtLineOffset(v5);
    v0.setTxtCharOffset(v6);
    v4.add(v0);
    v0 = v5;
    :cond_2
    v7 = v5 - v0;
    v12 = 0x7d0;
    if (v7 <= v12) {
//       if-le v7, v12, :cond_3
    }
    v0 = new ArrayList();
    v0.<init>();
    :goto_2
    v4 = v0.size();
    if (v4 != 0) {
//       if-nez v4, :cond_6
    }
    v2 = v2 + 0x1;
    goto :goto_0
    :cond_3
    v7 = v5 + 0x1;
    v5 = v11.length();
    v5 += v6;
    v6 = v5;
    v5 = v7;
    goto :goto_1
    :cond_4
    v0 = v4.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_5
    }
    v0 = v4.size();
    v0 = v0 + -0x1;
    v0 = v4.get(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    v5 = v0.getTxtCharOffset();
    v5 = v6 - v5;
    v0.setTxtCharLength(v5);
    Lcom/ushaqi/zhuishushenqi/reader/txt/U.a(v4, p0);
    :cond_5
    v9.close();
    v0 = v4;
    goto :goto_2
    :cond_6
    if (v0 == 0) {
//       if-eqz v0, :cond_7
    }
    v2 = v0.size();
    if (v2 != 0) {
//       if-nez v2, :cond_8
    }
    :cond_7
    v0 = Lcom/ushaqi/zhuishushenqi/reader/txt/U.c(p0);
    v2 = v0.size();
    if (v2 <= 0) {
//       if-lez v2, :cond_8
    }
    v2 = 0x0;
    v1.setRealChapter(v2);
    :cond_8
    v2 = v0.size();
    new-array v2, v2, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    v0 = v0.toArray(v2);
    check-cast v0, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    v1.setChapters(v0);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    v0 = v1;
    :goto_3
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_3
.end method
.method private static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
    .prologue
    :try_start_0
    v0 = new ObjectOutputStream();
    v1 = new FileOutputStream();
    v2 = new File();
    v3 = Lcom/ushaqi/zhuishushenqi/c;->d;
    v3 = Lcom/arcsoft/hpay100/a/a.J(v3);
    v4 = Lcom/ushaqi/zhuishushenqi/reader/txt/U.b(p1);
    v2.<init>(v3, v4);
    v1.<init>(v2);
    v0.<init>(v1);
    v1 = new LocalTxtToc();
    v2 = new File();
    v2.<init>(p1);
    v2 = v2.length();
    v1.<init>(v2, v3, p0);
    v0.writeObject(v1);
    v0.flush();
    v0.close();
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .prologue
    v0 = p0.trim();
    v1 = "/";
    v1 = p0.lastIndexOf(v1);
    v1 = v1 + 0x1;
    v0 = v0.substring(v1);
    v1 = ".";
    v1 = v0.lastIndexOf(v1);
    v2 = -0x1;
    if (v1 == v2) {
//       if-eq v1, v2, :cond_0
    }
    v2 = 0x0;
    v0 = v0.substring(v2, v1);
    return v0;
    :cond_0
    v0 = new FileNotFoundException();
    v0.<init>();
    throw v0
.end method
.method private static c(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation
    .prologue
    v3 = 0x0;
    v5 = Lcom/arcsoft/hpay100/a/a.G(p0);
    v6 = new ArrayList();
    v6.<init>();
    v0 = 0x1;
    v1 = v0;
    v2 = v3;
    v4 = v3;
    :goto_0
    v7 = v5.readLine();
    if (v7 == 0) {
//       if-eqz v7, :cond_2
    }
    v0 = v1 * 0x1388;
    if (v2 >= v0) {
//       if-ge v2, v0, :cond_0
    }
    if (v4 != 0) {
//       if-nez v4, :cond_4
    }
    :cond_0
    v0 = v6.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_1
    }
    v0 = v6.size();
    v0 = v0 + -0x1;
    v0 = v6.get(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    v8 = v0.getTxtCharOffset();
    v8 = v2 - v8;
    v0.setTxtCharLength(v8);
    :cond_1
    v0 = new ChapterLink();
    v0.<init>();
    v0.setUnreadble(v3);
    v8 = new StringBuilder();
    v9 = "\u7b2c";
    v8.<init>(v9);
    v8 = v8.append(v1);
    v9 = "\u8282";
    v8 = v8.append(v9);
    v8 = v8.toString();
    v0.setTitle(v8);
    v0.setTxtCharOffset(v2);
    v0.setTxtLineOffset(v4);
    v6.add(v0);
    v0 = v1 + 0x1;
    :goto_1
    v4 = v4 + 0x1;
    v1 = v7.length();
    v1 += v2;
    v2 = v1;
    v1 = v0;
    goto :goto_0
    :cond_2
    v0 = v6.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_3
    }
    v0 = v6.size();
    v0 = v0 + -0x1;
    v0 = v6.get(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    v1 = v0.getTxtCharOffset();
    v1 = v2 - v1;
    v0.setTxtCharLength(v1);
    Lcom/ushaqi/zhuishushenqi/reader/txt/U.a(v6, p0);
    :cond_3
    v5.close();
    return v6;
    :cond_4
    v0 = v1;
    goto :goto_1
.end method
.method private static d(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation
    .prologue
    v1 = 0x0;
    :try_start_0
    v2 = new File();
    v0 = Lcom/ushaqi/zhuishushenqi/c;->d;
    v0 = Lcom/arcsoft/hpay100/a/a.J(v0);
    v3 = Lcom/ushaqi/zhuishushenqi/reader/txt/U.b(p0);
    v2.<init>(v0, v3);
    v0 = v2.exists();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = v1;
    :goto_0
    return v0;
    :cond_0
    v3 = new ObjectInputStream();
    v0 = new FileInputStream();
    v0.<init>(v2);
    v3.<init>(v0);
    v0 = v3.readObject();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;
    v3.close();
    v3 = new File();
    v3.<init>(p0);
    v4 = v3.length();
    v6 = v0.getTxtFileLength();
    cmp-long v3, v4, v6
    if (v3 != 0) {
//       if-nez v3, :cond_1
    }
    v0 = v0.getChapterLinks();
    goto :goto_0
    :cond_1
    v2.delete();
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    :goto_1
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_1
    :catch_1
    move-exception v0
    v0.printStackTrace();
    goto :goto_1
.end method
