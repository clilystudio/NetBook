.class public final Lcom/squareup/okhttp/internal/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/b;


# static fields
.field public static final a:Lcom/squareup/okhttp/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/squareup/okhttp/internal/http/a;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/a;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/a;->a:Lcom/squareup/okhttp/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/net/Proxy;Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/C;
    .locals 12

    .prologue
    .line 39
    invoke-virtual {p2}, Lcom/squareup/okhttp/I;->i()Ljava/util/List;

    move-result-object v9

    .line 40
    invoke-virtual {p2}, Lcom/squareup/okhttp/I;->a()Lcom/squareup/okhttp/C;

    move-result-object v10

    .line 41
    invoke-virtual {v10}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v6

    .line 42
    const/4 v0, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    move v8, v0

    :goto_0
    if-ge v8, v11, :cond_1

    .line 43
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/squareup/okhttp/l;

    .line 44
    const-string v0, "Basic"

    invoke-virtual {v5}, Lcom/squareup/okhttp/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6}, Lcom/squareup/okhttp/internal/http/a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v6}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/URL;)I

    move-result v2

    .line 48
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/squareup/okhttp/l;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/squareup/okhttp/l;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 46
    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v10}, Lcom/squareup/okhttp/C;->g()Lcom/squareup/okhttp/D;

    move-result-object v1

    const-string v2, "Authorization"

    .line 54
    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    .line 57
    :goto_1
    return-object v0

    .line 42
    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Ljava/net/Proxy;Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/C;
    .locals 12

    .prologue
    .line 62
    invoke-virtual {p2}, Lcom/squareup/okhttp/I;->i()Ljava/util/List;

    move-result-object v9

    .line 63
    invoke-virtual {p2}, Lcom/squareup/okhttp/I;->a()Lcom/squareup/okhttp/C;

    move-result-object v10

    .line 64
    invoke-virtual {v10}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v6

    .line 65
    const/4 v0, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    move v8, v0

    :goto_0
    if-ge v8, v11, :cond_1

    .line 66
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/squareup/okhttp/l;

    .line 67
    const-string v0, "Basic"

    invoke-virtual {v5}, Lcom/squareup/okhttp/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 71
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v6}, Lcom/squareup/okhttp/internal/http/a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 72
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/squareup/okhttp/l;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/squareup/okhttp/l;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 70
    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v10}, Lcom/squareup/okhttp/C;->g()Lcom/squareup/okhttp/D;

    move-result-object v1

    const-string v2, "Proxy-Authorization"

    .line 78
    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    .line 81
    :goto_1
    return-object v0

    .line 65
    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
