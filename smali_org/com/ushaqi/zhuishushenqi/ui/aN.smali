.class final Lcom/ushaqi/zhuishushenqi/ui/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/event/k;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;Lcom/ushaqi/zhuishushenqi/event/k;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aN;->b:Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/aN;->a:Lcom/ushaqi/zhuishushenqi/event/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aN;->b:Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aN;->a:Lcom/ushaqi/zhuishushenqi/event/k;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/event/k;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 124
    return-void
.end method
