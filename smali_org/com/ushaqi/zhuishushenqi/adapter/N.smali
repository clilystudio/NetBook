.class final Lcom/ushaqi/zhuishushenqi/adapter/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/adapter/R;

.field final synthetic b:Lcom/ushaqi/zhuishushenqi/model/Tweet;

.field final synthetic c:Lcom/ushaqi/zhuishushenqi/adapter/G;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/N;->c:Lcom/ushaqi/zhuishushenqi/adapter/G;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/N;->a:Lcom/ushaqi/zhuishushenqi/adapter/R;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/adapter/N;->b:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 502
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/N;->a:Lcom/ushaqi/zhuishushenqi/adapter/R;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/adapter/R;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 503
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u5220\u9664\u52a8\u6001\uff1f"

    .line 1046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 503
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/P;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/adapter/P;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/N;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/O;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/adapter/O;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/N;)V

    .line 508
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 515
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 516
    return-void
.end method
