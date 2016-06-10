.class public final Lcom/umeng/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:J

.field public static i:Z

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:[D

.field private static m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8
    sput-object v1, Lcom/umeng/a/a;->j:Ljava/lang/String;

    .line 9
    sput-object v1, Lcom/umeng/a/a;->k:Ljava/lang/String;

    .line 11
    sput-object v1, Lcom/umeng/a/a;->a:Ljava/lang/String;

    .line 12
    sput-object v1, Lcom/umeng/a/a;->b:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/umeng/a/a;->c:Ljava/lang/String;

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/umeng/a/a;->d:Ljava/lang/String;

    .line 51
    sput-object v1, Lcom/umeng/a/a;->l:[D

    .line 84
    sput-boolean v2, Lcom/umeng/a/a;->e:Z

    .line 86
    sput-boolean v2, Lcom/umeng/a/a;->f:Z

    .line 87
    sput-boolean v2, Lcom/umeng/a/a;->g:Z

    .line 88
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/umeng/a/a;->h:J

    .line 89
    sput-boolean v2, Lcom/umeng/a/a;->i:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/umeng/a/a;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    invoke-static {p0}, Lu/aly/bs;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/a/a;->j:Ljava/lang/String;

    .line 38
    :cond_0
    sget-object v0, Lcom/umeng/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static a(II)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/umeng/a/a;->m:[I

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/umeng/a/a;->m:[I

    .line 72
    :cond_0
    sget-object v0, Lcom/umeng/a/a;->m:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 73
    sget-object v0, Lcom/umeng/a/a;->m:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 74
    return-void
.end method

.method public static a()[D
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/umeng/a/a;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 43
    invoke-static {p0}, Lu/aly/bs;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/a/a;->k:Ljava/lang/String;

    .line 45
    :cond_0
    sget-object v0, Lcom/umeng/a/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)[I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/umeng/a/a;->m:[I

    if-nez v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/a/o;->a()[I

    move-result-object v0

    sput-object v0, Lcom/umeng/a/a;->m:[I

    .line 81
    :cond_0
    sget-object v0, Lcom/umeng/a/a;->m:[I

    return-object v0
.end method
