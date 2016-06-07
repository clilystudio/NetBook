.class public Lcom/activeandroid/util/SqlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_COMMENT:I = 0x2

.field public static final STATE_COMMENT_BLOCK:I = 0x3

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_STRING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isNewLine(C)Z
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhitespace(C)Z
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    :try_start_0
    new-instance v8, Lcom/activeandroid/util/Tokenizer;

    invoke-direct {v8, v5}, Lcom/activeandroid/util/Tokenizer;-><init>(Ljava/io/InputStream;)V

    move v0, v2

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {v8}, Lcom/activeandroid/util/Tokenizer;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 45
    invoke-virtual {v8}, Lcom/activeandroid/util/Tokenizer;->next()I

    move-result v9

    int-to-char v9, v9

    .line 47
    if-ne v0, v3, :cond_1

    .line 48
    const-string v9, "*/"

    invoke-virtual {v8, v9}, Lcom/activeandroid/util/Tokenizer;->skip(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v2

    .line 49
    goto :goto_0

    .line 53
    :cond_1
    if-ne v0, v4, :cond_2

    .line 54
    invoke-static {v9}, Lcom/activeandroid/util/SqlParser;->isNewLine(C)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v2

    .line 55
    goto :goto_0

    .line 59
    :cond_2
    if-nez v0, :cond_3

    const-string v10, "/*"

    invoke-virtual {v8, v10}, Lcom/activeandroid/util/Tokenizer;->skip(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v0, v3

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    if-nez v0, :cond_4

    const-string v10, "--"

    invoke-virtual {v8, v10}, Lcom/activeandroid/util/Tokenizer;->skip(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v0, v4

    .line 65
    goto :goto_0

    .line 67
    :cond_4
    if-nez v0, :cond_5

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_5

    .line 68
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 73
    :cond_5
    if-nez v0, :cond_8

    const/16 v10, 0x27

    if-ne v9, v10, :cond_8

    move v0, v1

    .line 81
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_0

    .line 82
    :cond_7
    if-nez v0, :cond_9

    :try_start_1
    invoke-static {v9}, Lcom/activeandroid/util/SqlParser;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_0

    .line 84
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 76
    :cond_8
    if-ne v0, v1, :cond_6

    const/16 v10, 0x27

    if-ne v9, v10, :cond_6

    move v0, v2

    .line 77
    goto :goto_1

    .line 87
    :cond_9
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 93
    :cond_a
    invoke-static {v5}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 97
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_b
    return-object v6
.end method
