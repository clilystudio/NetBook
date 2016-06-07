.class public final Lcom/squareup/okhttp/internal/http/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/A;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/squareup/okhttp/internal/http/m;

.field private final d:Lcom/squareup/okhttp/internal/spdy/A;

.field private e:Lcom/squareup/okhttp/internal/spdy/M;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    .line 52
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 53
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 54
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 55
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "transfer-encoding"

    .line 56
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    .line 51
    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/y;->a:Ljava/util/List;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Lokio/ByteString;

    const-string v1, "connection"

    .line 60
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 61
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "keep-alive"

    .line 62
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "proxy-connection"

    .line 63
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "te"

    .line 64
    invoke-static {v1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "transfer-encoding"

    .line 65
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "encoding"

    .line 66
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "upgrade"

    .line 67
    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/y;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/internal/spdy/A;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/y;->c:Lcom/squareup/okhttp/internal/http/m;

    .line 75
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/y;->d:Lcom/squareup/okhttp/internal/spdy/A;

    .line 76
    return-void
.end method

.method private static a(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    .line 225
    sget-object v0, Lcom/squareup/okhttp/internal/http/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    :goto_0
    return v0

    .line 226
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_1

    .line 227
    sget-object v0, Lcom/squareup/okhttp/internal/http/y;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/K;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lcom/squareup/okhttp/internal/http/t;

    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/y;->e:Lcom/squareup/okhttp/internal/spdy/M;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/spdy/M;->f()Lokio/y;

    move-result-object v2

    invoke-static {v2}, Lokio/o;->a(Lokio/y;)Lokio/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/t;-><init>(Lcom/squareup/okhttp/u;Lokio/i;)V

    return-object v0
.end method

.method public final a(Lcom/squareup/okhttp/C;J)Lokio/x;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->e:Lcom/squareup/okhttp/internal/spdy/M;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/M;->g()Lokio/x;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->e:Lcom/squareup/okhttp/internal/spdy/M;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/M;->g()Lokio/x;

    move-result-object v0

    invoke-interface {v0}, Lokio/x;->close()V

    .line 101
    return-void
.end method

.method public final a(Lcom/squareup/okhttp/C;)V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->e:Lcom/squareup/okhttp/internal/spdy/M;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/m;->b()V

    .line 86
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/m;->c()Z

    move-result v4

    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/m;->f()Lcom/squareup/okhttp/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->k()Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/y;->d:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/y;->d:Lcom/squareup/okhttp/internal/spdy/A;

    .line 90
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/A;->a()Lcom/squareup/okhttp/Protocol;

    move-result-object v6

    .line 1114
    invoke-virtual {p1}, Lcom/squareup/okhttp/C;->e()Lcom/squareup/okhttp/u;

    move-result-object v7

    .line 1115
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/squareup/okhttp/u;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1116
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/d;->b:Lokio/ByteString;

    invoke-virtual {p1}, Lcom/squareup/okhttp/C;->d()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/d;->c:Lokio/ByteString;

    invoke-virtual {p1}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v9

    invoke-static {v9}, Lcom/squareup/okhttp/internal/http/b;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v3, v9}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    invoke-virtual {p1}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/m;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    .line 1119
    sget-object v3, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v6, :cond_2

    .line 1120
    new-instance v3, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v9, Lcom/squareup/okhttp/internal/spdy/d;->g:Lokio/ByteString;

    invoke-direct {v3, v9, v0}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/d;->f:Lokio/ByteString;

    invoke-direct {v0, v3, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    :goto_1
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/d;->d:Lokio/ByteString;

    invoke-virtual {p1}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1130
    invoke-virtual {v7}, Lcom/squareup/okhttp/u;->a()I

    move-result v10

    move v3, v2

    :goto_2
    if-ge v3, v10, :cond_6

    .line 1132
    invoke-virtual {v7, v3}, Lcom/squareup/okhttp/u;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v11

    .line 1133
    invoke-virtual {v7, v3}, Lcom/squareup/okhttp/u;->b(I)Ljava/lang/String;

    move-result-object v12

    .line 1136
    invoke-static {v6, v11}, Lcom/squareup/okhttp/internal/http/y;->a(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1139
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->b:Lokio/ByteString;

    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->c:Lokio/ByteString;

    .line 1140
    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->d:Lokio/ByteString;

    .line 1141
    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->e:Lokio/ByteString;

    .line 1142
    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->f:Lokio/ByteString;

    .line 1143
    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/d;->g:Lokio/ByteString;

    .line 1144
    invoke-virtual {v11, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1150
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v0, v11, v12}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    :cond_1
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1122
    :cond_2
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v6, :cond_3

    .line 1123
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/d;

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/d;->e:Lokio/ByteString;

    invoke-direct {v0, v3, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1125
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    move v1, v2

    .line 1155
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1156
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lokio/ByteString;

    invoke-virtual {v0, v11}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1157
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    .line 1167
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    new-instance v12, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v12, v11, v0}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v8, v1, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1155
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 90
    :cond_6
    const/4 v0, 0x1

    .line 89
    invoke-virtual {v5, v8, v4, v0}, Lcom/squareup/okhttp/internal/spdy/A;->a(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/M;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->e:Lcom/squareup/okhttp/internal/spdy/M;

    .line 92
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->e:Lcom/squareup/okhttp/internal/spdy/M;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/M;->e()Lokio/z;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/y;->c:Lcom/squareup/okhttp/internal/http/m;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v1}, Lcom/squareup/okhttp/A;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokio/z;->a(JLjava/util/concurrent/TimeUnit;)Lokio/z;

    goto/16 :goto_0
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/u;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->e:Lcom/squareup/okhttp/internal/spdy/M;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/M;->g()Lokio/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/u;->a(Lokio/x;)V

    .line 97
    return-void
.end method

.method public final b()Lcom/squareup/okhttp/J;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->e:Lcom/squareup/okhttp/internal/spdy/M;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/M;->d()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/y;->d:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/A;->a()Lcom/squareup/okhttp/Protocol;

    move-result-object v7

    .line 1173
    const/4 v2, 0x0

    .line 1174
    const-string v1, "HTTP/1.1"

    .line 1176
    new-instance v8, Lcom/squareup/okhttp/v;

    invoke-direct {v8}, Lcom/squareup/okhttp/v;-><init>()V

    .line 1177
    sget-object v0, Lcom/squareup/okhttp/internal/http/r;->c:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v0, v4}, Lcom/squareup/okhttp/v;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 1178
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    move v5, v3

    :goto_0
    if-ge v5, v9, :cond_5

    .line 1179
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v10, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lokio/ByteString;

    .line 1180
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v11

    move-object v0, v1

    move v1, v3

    .line 1181
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1182
    invoke-virtual {v11, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1183
    const/4 v12, -0x1

    if-ne v4, v12, :cond_0

    .line 1184
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    .line 1186
    :cond_0
    invoke-virtual {v11, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1187
    sget-object v12, Lcom/squareup/okhttp/internal/spdy/d;->a:Lokio/ByteString;

    invoke-virtual {v10, v12}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1194
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v13, v2

    move-object v2, v1

    move v1, v13

    .line 1195
    goto :goto_1

    .line 1189
    :cond_1
    sget-object v12, Lcom/squareup/okhttp/internal/spdy/d;->g:Lokio/ByteString;

    invoke-virtual {v10, v12}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v0, v1

    move-object v1, v2

    .line 1190
    goto :goto_2

    .line 1191
    :cond_2
    invoke-static {v7, v10}, Lcom/squareup/okhttp/internal/http/y;->a(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1192
    invoke-virtual {v10}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v1}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    :cond_3
    move-object v1, v2

    goto :goto_2

    .line 1178
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    .line 1197
    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1199
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/z;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/z;

    move-result-object v0

    .line 1200
    new-instance v1, Lcom/squareup/okhttp/J;

    invoke-direct {v1}, Lcom/squareup/okhttp/J;-><init>()V

    .line 1201
    invoke-virtual {v1, v7}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/J;

    move-result-object v1

    iget v2, v0, Lcom/squareup/okhttp/internal/http/z;->b:I

    .line 1202
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(I)Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/z;->c:Ljava/lang/String;

    .line 1203
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/J;->a(Ljava/lang/String;)Lcom/squareup/okhttp/J;

    move-result-object v0

    .line 1204
    invoke-virtual {v8}, Lcom/squareup/okhttp/v;->a()Lcom/squareup/okhttp/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/u;)Lcom/squareup/okhttp/J;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method
