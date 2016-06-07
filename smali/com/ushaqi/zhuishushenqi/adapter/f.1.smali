.class final Lcom/ushaqi/zhuishushenqi/adapter/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

.field private synthetic b:I

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;I)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/f;->c:Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/f;->a:Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/adapter/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 97
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/x;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/f;->a:Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/f;->c:Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/adapter/f;->b:I

    invoke-static {v3, v4}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a(Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;I)Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/event/x;-><init>(Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 98
    return-void
.end method
