.class final Lcom/ushaqi/zhuishushenqi/widget/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

.field private synthetic b:Z


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;Z)V
    .locals 0

    .prologue
    .line 71
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/at;->a:Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    iput-boolean p3, p0, Lcom/ushaqi/zhuishushenqi/widget/at;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 74
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/x;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/at;->a:Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    iget-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/widget/at;->b:Z

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/event/x;-><init>(Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
