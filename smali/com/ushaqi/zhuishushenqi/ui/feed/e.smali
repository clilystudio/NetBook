.class final Lcom/ushaqi/zhuishushenqi/ui/feed/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;Landroid/app/AlertDialog;II)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/e;->d:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/e;->a:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/e;->b:I

    iput p4, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/e;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 215
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/e;->b:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/e;->c:I

    if-eq v0, v1, :cond_0

    .line 216
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/e;->b:I

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->e(I)I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/e;->d:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedListActivity;

    const-string v2, "feed_chapter_count"

    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 218
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/m;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/m;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 220
    :cond_0
    return-void
.end method
