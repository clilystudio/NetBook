.class public final Lcom/ushaqi/zhuishushenqi/util/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/util/ak;

.field private b:[[Ljava/lang/String;

.field private c:[[Ljava/lang/String;

.field private d:[[Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x16

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\uff01"

    aput-object v2, v1, v4

    const-string v2, "!"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\uff1f"

    aput-object v2, v1, v4

    const-string v2, "?"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\uff08"

    aput-object v2, v1, v4

    const-string v2, "("

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\uff09"

    aput-object v2, v1, v4

    const-string v2, ")"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u3002"

    aput-object v2, v1, v4

    const-string v2, "."

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff0c"

    aput-object v3, v2, v4

    const-string v3, ","

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff1b"

    aput-object v3, v2, v4

    const-string v3, ";"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff1a"

    aput-object v3, v2, v4

    const-string v3, ":"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u3001"

    aput-object v3, v2, v4

    const-string v3, ","

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u3014"

    aput-object v3, v2, v4

    const-string v3, "("

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u3015"

    aput-object v3, v2, v4

    const-string v3, ")"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u3000"

    aput-object v3, v2, v4

    const-string v3, " "

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff10"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff11"

    aput-object v3, v2, v4

    const-string v3, "1"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff12"

    aput-object v3, v2, v4

    const-string v3, "2"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff13"

    aput-object v3, v2, v4

    const-string v3, "3"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff14"

    aput-object v3, v2, v4

    const-string v3, "4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff15"

    aput-object v3, v2, v4

    const-string v3, "5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff16"

    aput-object v3, v2, v4

    const-string v3, "6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff17"

    aput-object v3, v2, v4

    const-string v3, "7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff18"

    aput-object v3, v2, v4

    const-string v3, "8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\uff19"

    aput-object v3, v2, v4

    const-string v3, "9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->b:[[Ljava/lang/String;

    .line 44
    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u96f6"

    aput-object v2, v1, v4

    const-string v2, "0"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u4e00"

    aput-object v2, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u4e8c"

    aput-object v2, v1, v4

    const-string v2, "2"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u4e24"

    aput-object v2, v1, v4

    const-string v2, "2"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u4e09"

    aput-object v2, v1, v4

    const-string v2, "3"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u56db"

    aput-object v3, v2, v4

    const-string v3, "4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u4e94"

    aput-object v3, v2, v4

    const-string v3, "5"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u516d"

    aput-object v3, v2, v4

    const-string v3, "6"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u4e03"

    aput-object v3, v2, v4

    const-string v3, "7"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u516b"

    aput-object v3, v2, v4

    const-string v3, "8"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u4e5d"

    aput-object v3, v2, v4

    const-string v3, "9"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->c:[[Ljava/lang/String;

    .line 58
    new-array v0, v8, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u4e07"

    aput-object v2, v1, v4

    const-string v2, "10000"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u5343"

    aput-object v2, v1, v4

    const-string v2, "1000"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u767e"

    aput-object v2, v1, v4

    const-string v2, "100"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u5341"

    aput-object v2, v1, v4

    const-string v2, "10"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->d:[[Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->e:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->f:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->g:Ljava/util/Map;

    .line 70
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/ak;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/ak;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->a:Lcom/ushaqi/zhuishushenqi/util/ak;

    .line 71
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/ae;->a()V

    .line 72
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/util/af;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 116
    const-string v1, "[\u7ae0|\u7b2c]?(\\d+)[\u7ae0|\u8282|\u56de]([^\\(]*)(\\(.+?\\))?"

    .line 117
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/af;

    if-nez v3, :cond_0

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/ushaqi/zhuishushenqi/util/af;-><init>(Lcom/ushaqi/zhuishushenqi/util/ae;ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 122
    :goto_1
    return-object v0

    .line 120
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 122
    :cond_1
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/af;

    const-string v2, ""

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/ushaqi/zhuishushenqi/util/af;-><init>(Lcom/ushaqi/zhuishushenqi/util/ae;ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 76
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->b:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 77
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->e:Ljava/util/Map;

    aget-object v6, v4, v1

    aget-object v4, v4, v7

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->c:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 81
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->f:Ljava/util/Map;

    aget-object v6, v4, v1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->d:[[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 85
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->g:Ljava/util/Map;

    aget-object v6, v4, v1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 87
    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    .line 1180
    const-string v1, ""

    .line 1181
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1188
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1189
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1190
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1191
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1192
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->e:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 1194
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 1196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/ae;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "[\\(|\u3010|\\[]((?![\u4e0a\u4e2d\u4e0b1-9])[^\\(|\u3010|\\[]+?)[\\)|\u3011|\\]]$"

    .line 130
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 132
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 139
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/util/ae;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v7, v0, [I

    move v1, v2

    .line 149
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->f:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->f:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v7, v1

    .line 149
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->g:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->g:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v7, v1

    goto :goto_1

    .line 160
    :cond_2
    array-length v8, v7

    move v6, v2

    move v0, v2

    move v4, v2

    :goto_2
    if-ge v6, v8, :cond_6

    aget v1, v7, v6

    .line 2175
    const/16 v5, 0xa

    if-lt v1, v5, :cond_4

    move v5, v3

    .line 161
    :goto_3
    if-eqz v5, :cond_5

    .line 162
    if-nez v0, :cond_3

    move v0, v3

    .line 163
    :cond_3
    mul-int/2addr v0, v1

    add-int/2addr v0, v4

    move v1, v0

    move v0, v2

    .line 160
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v1

    goto :goto_2

    :cond_4
    move v5, v2

    .line 2175
    goto :goto_3

    :cond_5
    move v0, v1

    move v1, v4

    .line 166
    goto :goto_4

    .line 170
    :cond_6
    add-int/2addr v0, v4

    .line 171
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 112
    :cond_1
    :goto_0
    return v0

    .line 99
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/util/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/util/ae;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/util/af;

    move-result-object v2

    .line 108
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/util/ae;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/util/af;

    move-result-object v3

    .line 109
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/af;->a(Lcom/ushaqi/zhuishushenqi/util/af;)I

    move-result v4

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/util/af;->a(Lcom/ushaqi/zhuishushenqi/util/af;)I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/af;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/util/af;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/ae;->a:Lcom/ushaqi/zhuishushenqi/util/ak;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/util/af;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/util/af;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/ushaqi/zhuishushenqi/util/ak;->a(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x3f000000

    cmpl-float v2, v2, v3

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
