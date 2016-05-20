.class final Lcom/ushaqi/zhuishushenqi/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/n;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/n;I)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ushaqi/zhuishushenqi/util/as;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const-string v1, "\u64ad\u653e\u5668\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void

    .line 491
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->a:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 492
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;Z)Z

    .line 493
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->a:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;I)I

    .line 494
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;I)V

    .line 502
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/n;->notifyDataSetChanged()V

    goto :goto_0

    .line 496
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->h()V

    goto :goto_1

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/o;->b:Lcom/ushaqi/zhuishushenqi/ui/n;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/n;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ushaqi/zhuishushenqi/util/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/as;->d()V

    goto :goto_1
.end method
