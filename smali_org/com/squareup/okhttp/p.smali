.class public final Lcom/squareup/okhttp/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/squareup/okhttp/p;

.field public static final b:Lcom/squareup/okhttp/p;

.field public static final c:Lcom/squareup/okhttp/p;

.field private static final f:[Lcom/squareup/okhttp/CipherSuite;


# instance fields
.field final d:Z

.field final e:Z

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/squareup/okhttp/CipherSuite;

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_DSS_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/okhttp/p;->f:[Lcom/squareup/okhttp/CipherSuite;

    .line 55
    new-instance v0, Lcom/squareup/okhttp/q;

    invoke-direct {v0, v3}, Lcom/squareup/okhttp/q;-><init>(Z)V

    sget-object v1, Lcom/squareup/okhttp/p;->f:[Lcom/squareup/okhttp/CipherSuite;

    .line 56
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/q;->a([Lcom/squareup/okhttp/CipherSuite;)Lcom/squareup/okhttp/q;

    move-result-object v0

    new-array v1, v6, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_2:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_1:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v5

    .line 57
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/q;->a([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/q;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/q;->a(Z)Lcom/squareup/okhttp/q;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/squareup/okhttp/q;->a()Lcom/squareup/okhttp/p;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/p;

    .line 62
    new-instance v0, Lcom/squareup/okhttp/q;

    sget-object v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/p;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/q;-><init>(Lcom/squareup/okhttp/p;)V

    new-array v1, v3, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v4

    .line 63
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/q;->a([Lcom/squareup/okhttp/TlsVersion;)Lcom/squareup/okhttp/q;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/q;->a(Z)Lcom/squareup/okhttp/q;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/squareup/okhttp/q;->a()Lcom/squareup/okhttp/p;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/p;->b:Lcom/squareup/okhttp/p;

    .line 68
    new-instance v0, Lcom/squareup/okhttp/q;

    invoke-direct {v0, v4}, Lcom/squareup/okhttp/q;-><init>(Z)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/q;->a()Lcom/squareup/okhttp/p;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/p;->c:Lcom/squareup/okhttp/p;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/q;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lcom/squareup/okhttp/q;->a(Lcom/squareup/okhttp/q;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/p;->d:Z

    .line 85
    invoke-static {p1}, Lcom/squareup/okhttp/q;->b(Lcom/squareup/okhttp/q;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/squareup/okhttp/q;->c(Lcom/squareup/okhttp/q;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/squareup/okhttp/q;->d(Lcom/squareup/okhttp/q;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/p;->e:Z

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/q;B)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/p;-><init>(Lcom/squareup/okhttp/q;)V

    return-void
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 220
    :cond_1
    :goto_0
    return v0

    .line 215
    :cond_2
    array-length v4, p0

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v5, p0, v3

    .line 1224
    array-length v6, p1

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v7, p1, v2

    .line 1225
    invoke-static {v5, v7}, Lcom/squareup/okhttp/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v0

    .line 216
    :goto_3
    if-nez v2, :cond_1

    .line 215
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1224
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    .line 1229
    goto :goto_3

    :cond_5
    move v0, v1

    .line 220
    goto :goto_0
.end method

.method static synthetic a(Lcom/squareup/okhttp/p;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/squareup/okhttp/TlsVersion;

    .line 111
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/squareup/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/TlsVersion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/p;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    .line 1139
    const/4 v0, 0x0

    .line 1140
    iget-object v1, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1141
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 1142
    const-class v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    .line 1143
    invoke-static {v1, v2, v0}, Lcom/squareup/okhttp/internal/l;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1146
    :cond_0
    if-eqz p2, :cond_3

    .line 1151
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1153
    if-eqz v1, :cond_3

    .line 1155
    if-eqz v0, :cond_2

    .line 1158
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 1159
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    const-string v2, "TLS_FALLBACK_SCSV"

    aput-object v2, v1, v0

    .line 1166
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 1167
    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/squareup/okhttp/internal/l;->a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1168
    new-instance v2, Lcom/squareup/okhttp/q;

    invoke-direct {v2, p0}, Lcom/squareup/okhttp/q;-><init>(Lcom/squareup/okhttp/p;)V

    .line 1169
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/q;->a([Ljava/lang/String;)Lcom/squareup/okhttp/q;

    move-result-object v1

    .line 1170
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/q;->b([Ljava/lang/String;)Lcom/squareup/okhttp/q;

    move-result-object v0

    .line 1171
    invoke-virtual {v0}, Lcom/squareup/okhttp/q;->a()Lcom/squareup/okhttp/p;

    move-result-object v0

    .line 125
    iget-object v1, v0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 127
    iget-object v0, v0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    .line 129
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 132
    :cond_1
    return-void

    .line 1157
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/squareup/okhttp/p;->e:Z

    return v0
.end method

.method public final a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    iget-boolean v1, p0, Lcom/squareup/okhttp/p;->d:Z

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/squareup/okhttp/p;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 192
    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 198
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/squareup/okhttp/p;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 233
    instance-of v2, p1, Lcom/squareup/okhttp/p;

    if-nez v2, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    .line 236
    :cond_2
    check-cast p1, Lcom/squareup/okhttp/p;

    .line 237
    iget-boolean v2, p0, Lcom/squareup/okhttp/p;->d:Z

    iget-boolean v3, p1, Lcom/squareup/okhttp/p;->d:Z

    if-ne v2, v3, :cond_0

    .line 239
    iget-boolean v2, p0, Lcom/squareup/okhttp/p;->d:Z

    if-eqz v2, :cond_3

    .line 240
    iget-object v2, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    iget-object v3, p1, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    iget-object v3, p1, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-boolean v2, p0, Lcom/squareup/okhttp/p;->e:Z

    iget-boolean v3, p1, Lcom/squareup/okhttp/p;->e:Z

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 245
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 249
    const/16 v0, 0x11

    .line 250
    iget-boolean v1, p0, Lcom/squareup/okhttp/p;->d:Z

    if-eqz v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/squareup/okhttp/p;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/squareup/okhttp/p;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 255
    :cond_0
    return v0

    .line 253
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/squareup/okhttp/p;->d:Z

    if-eqz v0, :cond_3

    .line 2099
    iget-object v0, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2100
    const/4 v0, 0x0

    .line 261
    :goto_0
    if-nez v0, :cond_2

    const-string v0, "[use default]"

    .line 262
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConnectionSpec(cipherSuites="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tlsVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    invoke-direct {p0}, Lcom/squareup/okhttp/p;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/okhttp/p;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_2
    return-object v0

    .line 2102
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lcom/squareup/okhttp/CipherSuite;

    .line 2103
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2104
    iget-object v2, p0, Lcom/squareup/okhttp/p;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/squareup/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/CipherSuite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2103
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2106
    :cond_1
    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 267
    :cond_3
    const-string v0, "ConnectionSpec()"

    goto :goto_2
.end method
