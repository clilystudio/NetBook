.class final Lcom/ushaqi/zhuishushenqi/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/l;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 530
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/l;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->getFirstVisiblePosition()I

    move-result v0

    .line 531
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/l;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/l;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/l;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->smoothScrollToPosition(I)V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/l;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/l;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/l;->a:Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->getLastVisiblePosition()I

    move-result v3

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method
