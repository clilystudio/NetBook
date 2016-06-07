.class public Lcom/ximalaya/ting/android/opensdk/httputil/util/CrypterUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hmacSHA1([B[B)[B
    .locals 2

    .prologue
    .line 29
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 35
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 37
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static hmacSHA1ToStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/util/CrypterUtil;->hmacSHA1ToStr([B[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hmacSHA1ToStr([B[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/ximalaya/ting/android/opensdk/httputil/util/CrypterUtil;->hmacSHA1([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/DigestUtils;->md5Hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
