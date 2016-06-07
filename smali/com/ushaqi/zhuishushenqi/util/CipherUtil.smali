.class public Lcom/ushaqi/zhuishushenqi/util/CipherUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "test"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 51
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v3, 0x0

    array-length v4, v0

    const-string v5, "AES"

    invoke-direct {v2, v0, v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 54
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v3, v4}, Lcom/arcsoft/hpay100/a/a;->a([BII)[B

    move-result-object v3

    .line 55
    const/16 v4, 0x10

    array-length v5, v0

    invoke-static {v0, v4, v5}, Lcom/arcsoft/hpay100/a/a;->a([BII)[B

    move-result-object v0

    .line 57
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 58
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 59
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/Key;
    .locals 6

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 102
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v3, 0x0

    array-length v4, v2

    const-string v5, "AES"

    invoke-direct {v0, v2, v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/util/CipherUtil;->a(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    .line 80
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 81
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lcom/arcsoft/hpay100/a/a;->a([BII)[B

    move-result-object v3

    .line 82
    const/16 v4, 0x10

    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/arcsoft/hpay100/a/a;->a([BII)[B

    move-result-object v2

    .line 84
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 85
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 86
    const/4 v5, 0x2

    invoke-virtual {v3, v5, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 87
    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 88
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static native getNewAdvert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public static native getNewAdvertWork(Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method
