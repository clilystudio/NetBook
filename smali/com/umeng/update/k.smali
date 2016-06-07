.class public final Lcom/umeng/update/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/umeng/update/k;->c:Z

    .line 33
    sput-boolean v0, Lcom/umeng/update/k;->d:Z

    .line 34
    sput-boolean v1, Lcom/umeng/update/k;->e:Z

    .line 35
    sput-boolean v0, Lcom/umeng/update/k;->f:Z

    .line 36
    sput-boolean v1, Lcom/umeng/update/k;->g:Z

    .line 37
    sput-boolean v0, Lcom/umeng/update/k;->h:Z

    .line 38
    sput-boolean v0, Lcom/umeng/update/k;->i:Z

    .line 39
    sput v1, Lcom/umeng/update/k;->j:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/umeng/update/k;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    invoke-static {p0}, Lu/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/k;->a:Ljava/lang/String;

    .line 58
    :cond_0
    sget-object v0, Lcom/umeng/update/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    const-string v1, "umeng_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/update/k;->e:Z

    .line 106
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/umeng/update/k;->c:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/umeng/update/k;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    invoke-static {p0}, Lu/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/k;->b:Ljava/lang/String;

    .line 66
    :cond_0
    sget-object v0, Lcom/umeng/update/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Z)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/update/k;->g:Z

    .line 122
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/umeng/update/k;->d:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    const-string v1, "umeng_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    const-string v1, "ignore"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
    :cond_0
    return-object v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/umeng/update/k;->e:Z

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/umeng/update/k;->f:Z

    return v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/umeng/update/k;->g:Z

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/umeng/update/k;->h:Z

    return v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/umeng/update/k;->i:Z

    return v0
.end method
