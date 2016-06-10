.class public final Lcom/squareup/okhttp/internal/http/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/m;

.field private final b:Lcom/squareup/okhttp/n;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/n;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/w;->a:Lcom/squareup/okhttp/m;

    .line 62
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/w;->b:Lcom/squareup/okhttp/n;

    .line 63
    return-void
.end method

.method private static b(IILcom/squareup/okhttp/L;)Ljava/net/Socket;
    .locals 5

    .prologue
    .line 149
    invoke-static {}, Lcom/squareup/okhttp/internal/g;->a()Lcom/squareup/okhttp/internal/g;

    move-result-object v1

    .line 151
    :try_start_0
    invoke-virtual {p2}, Lcom/squareup/okhttp/L;->b()Ljava/net/Proxy;

    move-result-object v2

    .line 152
    invoke-virtual {p2}, Lcom/squareup/okhttp/L;->a()Lcom/squareup/okhttp/a;

    move-result-object v0

    .line 154
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_1

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/a;->c()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 159
    :goto_0
    invoke-virtual {v0, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 160
    invoke-virtual {p2}, Lcom/squareup/okhttp/L;->c()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/squareup/okhttp/internal/g;->a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 162
    return-object v0

    .line 157
    :cond_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public final a(IIILcom/squareup/okhttp/C;Lcom/squareup/okhttp/L;Ljava/util/List;Z)Lcom/squareup/okhttp/internal/http/x;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/squareup/okhttp/C;",
            "Lcom/squareup/okhttp/L;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/p;",
            ">;Z)",
            "Lcom/squareup/okhttp/internal/http/x;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual/range {p5 .. p5}, Lcom/squareup/okhttp/L;->a()Lcom/squareup/okhttp/a;

    move-result-object v7

    .line 76
    new-instance v8, Lcom/squareup/okhttp/internal/a;

    move-object/from16 v0, p6

    invoke-direct {v8, v0}, Lcom/squareup/okhttp/internal/a;-><init>(Ljava/util/List;)V

    .line 77
    const/4 v2, 0x0

    move-object v4, v2

    .line 79
    :goto_0
    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/w;->b(IILcom/squareup/okhttp/L;)Ljava/net/Socket;

    move-result-object v9

    .line 80
    invoke-virtual/range {p5 .. p5}, Lcom/squareup/okhttp/L;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1231
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 1232
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/URL;)I

    move-result v5

    .line 1233
    const-string v2, "https"

    invoke-static {v2}, Lcom/squareup/okhttp/internal/l;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v5, v2, :cond_4

    move-object v2, v3

    .line 1234
    :goto_1
    new-instance v6, Lcom/squareup/okhttp/D;

    invoke-direct {v6}, Lcom/squareup/okhttp/D;-><init>()V

    new-instance v10, Ljava/net/URL;

    const-string v11, "https"

    const-string v12, "/"

    invoke-direct {v10, v11, v3, v5, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1235
    invoke-virtual {v6, v10}, Lcom/squareup/okhttp/D;->a(Ljava/net/URL;)Lcom/squareup/okhttp/D;

    move-result-object v3

    const-string v5, "Host"

    .line 1236
    invoke-virtual {v3, v5, v2}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v2

    const-string v3, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    .line 1237
    invoke-virtual {v2, v3, v5}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v2

    .line 1240
    const-string v3, "User-Agent"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1241
    if-eqz v3, :cond_0

    .line 1242
    const-string v5, "User-Agent"

    invoke-virtual {v2, v5, v3}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1246
    :cond_0
    const-string v3, "Proxy-Authorization"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1247
    if-eqz v3, :cond_1

    .line 1248
    const-string v5, "Proxy-Authorization"

    invoke-virtual {v2, v5, v3}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1251
    :cond_1
    invoke-virtual {v2}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v2

    .line 1178
    new-instance v5, Lcom/squareup/okhttp/internal/http/d;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/w;->b:Lcom/squareup/okhttp/n;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/w;->a:Lcom/squareup/okhttp/m;

    invoke-direct {v5, v3, v6, v9}, Lcom/squareup/okhttp/internal/http/d;-><init>(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/m;Ljava/net/Socket;)V

    .line 1179
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Lcom/squareup/okhttp/internal/http/d;->a(II)V

    .line 1180
    invoke-virtual {v2}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v3

    .line 1181
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "CONNECT "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/URL;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " HTTP/1.1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1183
    :cond_2
    invoke-virtual {v2}, Lcom/squareup/okhttp/C;->e()Lcom/squareup/okhttp/u;

    move-result-object v3

    invoke-virtual {v5, v3, v6}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/u;Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/d;->d()V

    .line 1185
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/d;->g()Lcom/squareup/okhttp/J;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/J;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object v10

    .line 1188
    invoke-static {v10}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/I;)J

    move-result-wide v2

    .line 1189
    const-wide/16 v12, -0x1

    cmp-long v11, v2, v12

    if-nez v11, :cond_3

    .line 1190
    const-wide/16 v2, 0x0

    .line 1192
    :cond_3
    invoke-virtual {v5, v2, v3}, Lcom/squareup/okhttp/internal/http/d;->b(J)Lokio/y;

    move-result-object v2

    .line 1193
    const v3, 0x7fffffff

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v11}, Lcom/squareup/okhttp/internal/l;->b(Lokio/y;ILjava/util/concurrent/TimeUnit;)Z

    .line 1194
    invoke-interface {v2}, Lokio/y;->close()V

    .line 1196
    invoke-virtual {v10}, Lcom/squareup/okhttp/I;->c()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1214
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response code for CONNECT: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v10}, Lcom/squareup/okhttp/I;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :catch_0
    move-exception v2

    .line 1219
    new-instance v3, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v3, v2}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 1233
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1202
    :sswitch_0
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/d;->e()J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_5

    .line 1203
    new-instance v2, Ljava/io/IOException;

    const-string v3, "TLS tunnel buffered too many bytes!"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1209
    :sswitch_1
    invoke-virtual/range {p5 .. p5}, Lcom/squareup/okhttp/L;->a()Lcom/squareup/okhttp/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/a;->f()Lcom/squareup/okhttp/b;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/squareup/okhttp/L;->b()Ljava/net/Proxy;

    move-result-object v3

    .line 1208
    invoke-static {v2, v10, v3}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/I;Ljava/net/Proxy;)Lcom/squareup/okhttp/C;

    move-result-object v2

    .line 1210
    if-nez v2, :cond_2

    .line 1211
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to authenticate with proxy"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :cond_5
    const/4 v3, 0x0

    .line 86
    :try_start_2
    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->d()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 90
    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->b()I

    move-result v6

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v5, v6, v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    :try_start_3
    invoke-virtual {v8, v2}, Lcom/squareup/okhttp/internal/a;->a(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/p;

    move-result-object v5

    .line 94
    invoke-static {}, Lcom/squareup/okhttp/internal/g;->a()Lcom/squareup/okhttp/internal/g;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 96
    const/4 v3, 0x0

    .line 98
    :try_start_4
    invoke-virtual {v5}, Lcom/squareup/okhttp/p;->a()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 100
    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->g()Ljava/util/List;

    move-result-object v11

    .line 99
    invoke-virtual {v6, v2, v10, v11}, Lcom/squareup/okhttp/internal/g;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 103
    :cond_6
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 105
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v10

    invoke-static {v10}, Lcom/squareup/okhttp/t;->a(Ljavax/net/ssl/SSLSession;)Lcom/squareup/okhttp/t;

    move-result-object v10

    .line 108
    invoke-virtual {v5}, Lcom/squareup/okhttp/p;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 109
    invoke-virtual {v6, v2}, Lcom/squareup/okhttp/internal/g;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 110
    invoke-static {v5}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 113
    :cond_7
    :try_start_5
    invoke-virtual {v6, v2}, Lcom/squareup/okhttp/internal/g;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 117
    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v11

    invoke-interface {v5, v6, v11}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 118
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 119
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 120
    new-instance v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Hostname "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " not verified:\n    certificate: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 122
    invoke-static {v3}, Lcom/squareup/okhttp/j;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\n    DN: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 123
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\n    subjectAltNames: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 124
    invoke-static {v3}, Lcom/squareup/okhttp/internal/a/b;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 131
    :catch_1
    move-exception v3

    move-object v5, v3

    move-object v6, v2

    .line 132
    :goto_2
    if-eqz p7, :cond_9

    invoke-virtual {v8, v5}, Lcom/squareup/okhttp/internal/a;->a(Ljava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v3, v2

    .line 133
    :goto_3
    invoke-static {v6}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/Socket;)V

    .line 134
    invoke-static {v9}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/Socket;)V

    .line 135
    if-nez v4, :cond_a

    .line 136
    new-instance v2, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v2, v5}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    .line 140
    :goto_4
    if-nez v3, :cond_b

    .line 141
    throw v2

    .line 113
    :catchall_0
    move-exception v3

    :try_start_6
    invoke-virtual {v6, v2}, Lcom/squareup/okhttp/internal/g;->a(Ljavax/net/ssl/SSLSocket;)V

    throw v3

    .line 128
    :cond_8
    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->j()Lcom/squareup/okhttp/j;

    move-result-object v5

    invoke-virtual {v7}, Lcom/squareup/okhttp/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Lcom/squareup/okhttp/t;->b()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v5, v6, v11}, Lcom/squareup/okhttp/j;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 130
    new-instance v5, Lcom/squareup/okhttp/internal/http/x;

    move-object/from16 v0, p5

    invoke-direct {v5, v0, v2, v3, v10}, Lcom/squareup/okhttp/internal/http/x;-><init>(Lcom/squareup/okhttp/L;Ljavax/net/ssl/SSLSocket;Lcom/squareup/okhttp/Protocol;Lcom/squareup/okhttp/t;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v5

    .line 132
    :cond_9
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    .line 138
    :cond_a
    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    move-object v2, v4

    goto :goto_4

    :cond_b
    move-object v4, v2

    .line 144
    goto/16 :goto_0

    .line 131
    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v6, v3

    goto :goto_2

    .line 1196
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(IILcom/squareup/okhttp/L;)Lcom/squareup/okhttp/internal/http/x;
    .locals 2

    .prologue
    .line 67
    invoke-static {p2, p1, p3}, Lcom/squareup/okhttp/internal/http/w;->b(IILcom/squareup/okhttp/L;)Ljava/net/Socket;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/squareup/okhttp/internal/http/x;

    invoke-direct {v1, p3, v0}, Lcom/squareup/okhttp/internal/http/x;-><init>(Lcom/squareup/okhttp/L;Ljava/net/Socket;)V

    return-object v1
.end method
