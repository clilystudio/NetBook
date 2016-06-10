.class public final Lcom/umeng/update/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/update/net/u;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/support/design/widget/K;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Ljava/lang/String;

.field private j:Lcom/umeng/update/net/i;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/umeng/update/o;->c:Landroid/support/design/widget/K;

    .line 34
    iput-object v0, p0, Lcom/umeng/update/o;->d:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/umeng/update/o;->e:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/umeng/update/o;->f:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/umeng/update/o;->g:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/umeng/update/o;->h:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/umeng/update/o;->i:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/umeng/update/o;->j:Lcom/umeng/update/net/i;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/o;->k:Z

    .line 46
    const-string v0, "delta_update"

    iput-object v0, p0, Lcom/umeng/update/o;->a:Ljava/lang/String;

    .line 47
    const-string v0, "update_normal"

    iput-object v0, p0, Lcom/umeng/update/o;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private a(Lcom/umeng/update/net/i;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 92
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/umeng/update/o;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/umeng/update/o;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 96
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 101
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 102
    invoke-static {}, Lcom/umeng/update/k;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/umeng/update/k;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/umeng/update/net/i;->a(Z)V

    .line 106
    :cond_0
    invoke-static {}, Lcom/umeng/update/k;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/update/net/i;->b(Z)V

    .line 108
    invoke-static {}, Lcom/umeng/update/k;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/update/net/i;->c(Z)V

    .line 109
    invoke-virtual {p1}, Lcom/umeng/update/net/i;->a()V

    .line 110
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_0

    .line 162
    :goto_0
    :pswitch_0
    return-void

    .line 154
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/o;->k:Z

    goto :goto_0

    .line 157
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/o;->k:Z

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/update/o;->k:Z

    .line 147
    return-void

    .line 137
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/update/o;->c()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/design/widget/K;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/umeng/update/o;->h:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Lu/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/o;->i:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/umeng/update/o;->d:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/umeng/update/o;->e:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/umeng/update/o;->f:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/umeng/update/o;->g:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/umeng/update/o;->c:Landroid/support/design/widget/K;

    .line 62
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/umeng/update/o;->k:Z

    return v0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 73
    new-instance v0, Lcom/umeng/update/net/i;

    iget-object v1, p0, Lcom/umeng/update/o;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/update/o;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/update/o;->i:Ljava/lang/String;

    .line 74
    iget-object v4, p0, Lcom/umeng/update/o;->f:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/update/net/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/net/u;)V

    .line 73
    iput-object v0, p0, Lcom/umeng/update/o;->j:Lcom/umeng/update/net/i;

    .line 75
    iget-object v0, p0, Lcom/umeng/update/o;->j:Lcom/umeng/update/net/i;

    iget-object v1, p0, Lcom/umeng/update/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/update/net/i;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/umeng/update/o;->j:Lcom/umeng/update/net/i;

    iget-object v1, p0, Lcom/umeng/update/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/update/net/i;->b(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/umeng/update/o;->j:Lcom/umeng/update/net/i;

    invoke-direct {p0, v0}, Lcom/umeng/update/o;->a(Lcom/umeng/update/net/i;)V

    .line 78
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    .line 84
    new-instance v0, Lcom/umeng/update/net/i;

    iget-object v1, p0, Lcom/umeng/update/o;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/update/o;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/update/o;->i:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/umeng/update/o;->d:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/update/net/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/net/u;)V

    .line 84
    iput-object v0, p0, Lcom/umeng/update/o;->j:Lcom/umeng/update/net/i;

    .line 86
    iget-object v0, p0, Lcom/umeng/update/o;->j:Lcom/umeng/update/net/i;

    iget-object v1, p0, Lcom/umeng/update/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/update/net/i;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/umeng/update/o;->j:Lcom/umeng/update/net/i;

    iget-object v1, p0, Lcom/umeng/update/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/update/net/i;->b(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/umeng/update/o;->j:Lcom/umeng/update/net/i;

    invoke-direct {p0, v0}, Lcom/umeng/update/o;->a(Lcom/umeng/update/net/i;)V

    .line 89
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/update/o;->k:Z

    .line 118
    return-void
.end method
