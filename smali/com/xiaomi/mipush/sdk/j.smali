.class public final Lcom/xiaomi/mipush/sdk/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/mipush/sdk/j;->a:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x17t
        0x54t
        0x72t
        0x48t
        0x0t
        0x4t
        0x61t
        0x49t
        0x61t
        0x2t
        0x34t
        0x54t
        0x66t
        0x12t
        0x20t
    .end array-data
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/b",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            ")",
            "Lcom/xiaomi/xmpush/thrift/h;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/xmpush/thrift/a;->a:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;Z)Lcom/xiaomi/xmpush/thrift/h;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/b;Lcom/xiaomi/xmpush/thrift/a;Z)Lcom/xiaomi/xmpush/thrift/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/b",
            "<TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/xiaomi/xmpush/thrift/a;",
            "Z)",
            "Lcom/xiaomi/xmpush/thrift/h;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 0
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->a(Lorg/apache/thrift/b;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "invoke convertThriftObjectToBytes method, return null."

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/h;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/h;-><init>()V

    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/d/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    .line 1000
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2, v3}, Lcom/xiaomi/mipush/sdk/j;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 0
    :cond_1
    :goto_1
    new-instance v2, Lcom/xiaomi/xmpush/thrift/d;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/d;-><init>()V

    const-wide/16 v4, 0x5

    iput-wide v4, v2, Lcom/xiaomi/xmpush/thrift/d;->a:J

    const-string v3, "fakeid"

    iput-object v3, v2, Lcom/xiaomi/xmpush/thrift/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/h;->a(Lcom/xiaomi/xmpush/thrift/d;)Lcom/xiaomi/xmpush/thrift/h;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/h;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1, p2}, Lcom/xiaomi/xmpush/thrift/h;->a(Lcom/xiaomi/xmpush/thrift/a;)Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1, v6}, Lcom/xiaomi/xmpush/thrift/h;->c(Z)Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/h;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/h;->a(Z)Lcom/xiaomi/xmpush/thrift/h;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/h;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/h;

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "encryption error. "

    invoke-static {v2}, Lcom/xiaomi/a/a/a/b;->c(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a([BI)Ljavax/crypto/Cipher;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/xiaomi/mipush/sdk/j;->a:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v2
.end method

.method protected static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/h;)Lorg/apache/thrift/b;
    .locals 3

    .prologue
    .line 0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/d/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->f()[B

    move-result-object v1

    .line 2000
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/xiaomi/mipush/sdk/j;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->a()Lcom/xiaomi/xmpush/thrift/a;

    move-result-object v1

    .line 3000
    sget-object v2, Lcom/xiaomi/mipush/sdk/k;->a:[I

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    .line 0
    :goto_1
    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Lorg/apache/thrift/b;[B)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/thrift/e;

    const-string v2, "the aes decrypt failed."

    invoke-direct {v1, v2, v0}, Lorg/apache/thrift/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/h;->f()[B

    move-result-object v0

    goto :goto_0

    .line 3000
    :pswitch_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/k;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/k;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/xiaomi/xmpush/thrift/r;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/r;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/xiaomi/xmpush/thrift/p;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/p;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcom/xiaomi/xmpush/thrift/t;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/t;-><init>()V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/xiaomi/xmpush/thrift/n;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/n;-><init>()V

    goto :goto_1

    :pswitch_5
    new-instance v1, Lcom/xiaomi/xmpush/thrift/e;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/e;-><init>()V

    goto :goto_1

    :pswitch_6
    new-instance v1, Lcom/xiaomi/xmpush/thrift/g;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/g;-><init>()V

    goto :goto_1

    :pswitch_7
    new-instance v1, Lcom/xiaomi/xmpush/thrift/m;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/m;-><init>()V

    goto :goto_1

    :pswitch_8
    new-instance v1, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    goto :goto_1

    :pswitch_9
    new-instance v1, Lcom/xiaomi/xmpush/thrift/g;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/g;-><init>()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
