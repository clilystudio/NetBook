.class public final Lcom/xiaomi/smack/d/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[C

.field private static final d:[C

.field private static final e:[C

.field private static f:Ljava/util/Random;

.field private static g:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->a:[C

    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->b:[C

    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->c:[C

    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->d:[C

    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->e:[C

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/xiaomi/smack/d/g;->f:Ljava/util/Random;

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/xiaomi/smack/d/g;->g:[C

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x5

    new-array v1, v5, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    sget-object v2, Lcom/xiaomi/smack/d/g;->g:[C

    sget-object v3, Lcom/xiaomi/smack/d/g;->f:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x3e

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    int-to-double v6, v3

    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v6, v8

    double-to-int v1, v6

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_d

    aget-char v5, v2, v1

    if-gt v5, v10, :cond_3

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_4

    if-le v1, v0, :cond_2

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcom/xiaomi/smack/d/g;->d:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-ne v5, v10, :cond_6

    if-le v1, v0, :cond_5

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcom/xiaomi/smack/d/g;->e:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/16 v6, 0x26

    if-ne v5, v6, :cond_9

    if-le v1, v0, :cond_7

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v5, v1, 0x5

    if-le v3, v5, :cond_8

    add-int/lit8 v5, v1, 0x1

    aget-char v5, v2, v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_8

    add-int/lit8 v5, v1, 0x2

    aget-char v5, v2, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v5, v1, 0x3

    aget-char v5, v2, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v5, v1, 0x4

    aget-char v5, v2, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v5, v1, 0x5

    aget-char v5, v2, v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_3

    :cond_8
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcom/xiaomi/smack/d/g;->c:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const/16 v6, 0x22

    if-ne v5, v6, :cond_b

    if-le v1, v0, :cond_a

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcom/xiaomi/smack/d/g;->a:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    const/16 v6, 0x27

    if-ne v5, v6, :cond_3

    if-le v1, v0, :cond_c

    sub-int v5, v1, v0

    invoke-virtual {v4, v2, v0, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v0, v1, 0x1

    sget-object v5, Lcom/xiaomi/smack/d/g;->b:[C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    if-eqz v0, :cond_0

    if-le v1, v0, :cond_e

    sub-int/2addr v1, v0

    invoke-virtual {v4, v2, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0, p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2, v6, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int/2addr v0, v4

    move v1, v0

    :goto_1
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    sub-int v6, v1, v0

    invoke-virtual {v5, v2, v0, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    add-int v0, v1, v4

    move v1, v0

    goto :goto_1

    :cond_2
    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {v5, v2, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/a/a/d/a;->a([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&apos;"

    const-string v2, "\'"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/smack/d/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1000
    const/16 v2, 0x20

    if-lt v4, v2, :cond_1

    const v2, 0xd7ff

    if-le v4, v2, :cond_4

    :cond_1
    const v2, 0xe000

    if-lt v4, v2, :cond_2

    const v2, 0xfffd

    if-le v4, v2, :cond_4

    :cond_2
    const/high16 v2, 0x10000

    if-lt v4, v2, :cond_3

    const v2, 0x10ffff

    if-le v4, v2, :cond_4

    :cond_3
    const/16 v2, 0x9

    if-eq v4, v2, :cond_4

    const/16 v2, 0xa

    if-eq v4, v2, :cond_4

    const/16 v2, 0xd

    if-ne v4, v2, :cond_6

    :cond_4
    const/4 v2, 0x1

    .line 0
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v2, v1

    .line 1000
    goto :goto_2

    .line 0
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
