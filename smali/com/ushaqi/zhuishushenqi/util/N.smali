.class public final Lcom/ushaqi/zhuishushenqi/util/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/N;->a:Landroid/app/Activity;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/N;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/N;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/N;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/P;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/util/P;-><init>(Lcom/ushaqi/zhuishushenqi/util/N;B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/P;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/N;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/N;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v2, "\u4e3e\u62a5"

    .line 1036
    iput-object v2, v1, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 62
    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/O;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/ushaqi/zhuishushenqi/util/O;-><init>(Lcom/ushaqi/zhuishushenqi/util/N;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Luk/me/lewisdeane/ldialogs/h;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 82
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/N;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    return-void
.end method
