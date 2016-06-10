.class public final Lcom/ushaqi/zhuishushenqi/reader/txt/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0008*(\u7b2c.+\u7ae0)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "(\\d{3})\\s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 35
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/Toc;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/Toc;-><init>()V

    .line 36
    invoke-virtual {v1, p0}, Lcom/ushaqi/zhuishushenqi/model/Toc;->setHost(Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    .line 44
    :cond_0
    sget-object v8, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->a:[Ljava/lang/String;

    move v2, v3

    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_6

    aget-object v0, v8, v2

    .line 1111
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->G(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v9

    .line 1114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    move v0, v3

    move v6, v3

    move v5, v3

    .line 1120
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 1121
    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1122
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v12

    if-lez v12, :cond_2

    .line 1124
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1125
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 1126
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTxtCharOffset()I

    move-result v12

    sub-int v12, v6, v12

    invoke-virtual {v0, v12}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTxtCharLength(I)V

    .line 1130
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;-><init>()V

    .line 1131
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setUnreadble(Z)V

    .line 1132
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTitle(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTxtLineOffset(I)V

    .line 1134
    invoke-virtual {v0, v6}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTxtCharOffset(I)V

    .line 1135
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v5

    .line 1139
    :cond_2
    sub-int v7, v5, v0

    const/16 v12, 0x7d0

    if-le v7, v12, :cond_3

    .line 1140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1143
    :cond_3
    add-int/lit8 v7, v5, 0x1

    .line 1144
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v6

    move v6, v5

    move v5, v7

    goto :goto_1

    .line 1148
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1149
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 1150
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTxtCharOffset()I

    move-result v5

    sub-int v5, v6, v5

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTxtCharLength(I)V

    .line 1152
    invoke-static {v4, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 1154
    :cond_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    move-object v0, v4

    .line 1155
    goto :goto_2

    .line 52
    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    .line 53
    :cond_7
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/Toc;->setRealChapter(Z)V

    .line 58
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/Toc;->setChapters([Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 63
    :goto_3
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 63
    const/4 v0, 0x0

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
    .line 161
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/ushaqi/zhuishushenqi/c;->d:Ljava/lang/String;

    .line 162
    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 163
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;-><init>(JLjava/util/List;)V

    .line 164
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 166
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 206
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

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
    const/4 v3, 0x0

    .line 67
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->G(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v5

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    const/4 v0, 0x1

    move v1, v0

    move v2, v3

    move v4, v3

    .line 74
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 76
    mul-int/lit16 v0, v1, 0x1388

    if-ge v2, v0, :cond_0

    if-nez v4, :cond_4

    .line 78
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 79
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 80
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTxtCharOffset()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {v0, v8}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTxtCharLength(I)V

    .line 83
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;-><init>()V

    .line 84
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setUnreadble(Z)V

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u7b2c"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u8282"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTitle(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTxtCharOffset(I)V

    .line 87
    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTxtLineOffset(I)V

    .line 88
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v1, 0x1

    .line 93
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 94
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 99
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 100
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTxtCharOffset()I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->setTxtCharLength(I)V

    .line 102
    invoke-static {v6, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 105
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 107
    return-object v6

    :cond_4
    move v0, v1

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
    const/4 v1, 0x0

    .line 175
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/U;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 195
    :goto_0
    return-object v0

    .line 179
    :cond_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;

    .line 182
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 184
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;->getTxtFileLength()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LocalTxtToc;->getChapterLinks()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v0, v1

    .line 195
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 192
    :catch_1
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
