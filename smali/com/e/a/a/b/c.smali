.class public final Lcom/e/a/a/b/c;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v8, [J

    const-wide/16 v2, 0x12c

    aput-wide v2, v0, v4

    const-wide/16 v2, 0xc8

    aput-wide v2, v0, v5

    const-wide/16 v2, 0x12c

    aput-wide v2, v0, v6

    const-wide/16 v2, 0xc8

    aput-wide v2, v0, v7

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    const/4 v0, 0x5

    new-array v0, v0, [C

    const/16 v1, 0x3c

    aput-char v1, v0, v4

    const/16 v1, 0x3e

    aput-char v1, v0, v5

    const/16 v1, 0x22

    aput-char v1, v0, v6

    const/16 v1, 0x27

    aput-char v1, v0, v7

    const/16 v1, 0x26

    aput-char v1, v0, v8

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "&lt;"

    aput-object v1, v0, v4

    const-string v1, "&gt;"

    aput-object v1, v0, v5

    const-string v1, "&quot;"

    aput-object v1, v0, v6

    const-string v1, "&apos;"

    aput-object v1, v0, v7

    const-string v1, "&amp;"

    aput-object v1, v0, v8

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
