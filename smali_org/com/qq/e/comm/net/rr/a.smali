.class public final Lcom/qq/e/comm/net/rr/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static b:Ljavax/crypto/Cipher;

.field private static c:Ljavax/crypto/Cipher;

.field private static d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->a:[B

    sput-object v1, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;

    sput-object v1, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;

    const-string v0, "4M3PpUC4Vu1uMp+Y0Mxd+vfc6v4ggJAINfgTlH74pis="

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->d:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5bt
        -0x3et
    .end array-data
.end method

.method private static declared-synchronized a()Ljavax/crypto/Cipher;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    const-class v1, Lcom/qq/e/comm/net/rr/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "AES/ECB/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/qq/e/comm/net/rr/a;->d:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->b:Ljavax/crypto/Cipher;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/qq/e/comm/net/rr/a$a;

    const-string v3, "Fail To Init Cipher"

    invoke-direct {v2, v3, v0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a([B)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    sget-object v2, Lcom/qq/e/comm/net/rr/a;->a:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {p0}, Lcom/qq/e/comm/a;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/qq/e/comm/net/rr/a;->c([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/net/rr/a$b;

    const-string v2, "Exception while packaging byte array"

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static declared-synchronized b()Ljavax/crypto/Cipher;
    .locals 5

    const-class v1, Lcom/qq/e/comm/net/rr/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "AES/ECB/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/qq/e/comm/net/rr/a;->d:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sput-object v0, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/qq/e/comm/net/rr/a;->c:Ljavax/crypto/Cipher;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/qq/e/comm/net/rr/a$a;

    const-string v3, "Fail To Init Cipher"

    invoke-direct {v2, v3, v0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b([B)[B
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x4

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/qq/e/comm/net/rr/a$b;

    const-string v1, "S2SS Package FormatError"

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    sget-object v0, Lcom/qq/e/comm/net/rr/a;->a:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/qq/e/comm/net/rr/a;->a:[B

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    const/4 v2, 0x1

    aget-byte v2, v1, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    if-ne v3, v0, :cond_2

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    if-eq v4, v0, :cond_3

    :cond_2
    new-instance v0, Lcom/qq/e/comm/net/rr/a$b;

    const-string v1, "S2SS Package Magic/Version FormatError"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/net/rr/a$b;

    const-string v2, "Exception while packaging byte array"

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/net/rr/a$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const/4 v0, 0x4

    :try_start_1
    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/net/rr/a;->d([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/a;->b([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method private static c([B)[B
    .locals 3

    invoke-static {}, Lcom/qq/e/comm/net/rr/a;->a()Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/net/rr/a$a;

    const-string v2, "Exception While encrypt byte array"

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d([B)[B
    .locals 3

    invoke-static {}, Lcom/qq/e/comm/net/rr/a;->b()Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/qq/e/comm/net/rr/a$a;

    const-string v2, "Exception While dencrypt byte array"

    invoke-direct {v1, v2, v0}, Lcom/qq/e/comm/net/rr/a$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
