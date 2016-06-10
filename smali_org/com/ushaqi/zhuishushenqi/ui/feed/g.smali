.class final Lcom/ushaqi/zhuishushenqi/ui/feed/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/feed/f;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/feed/f;Landroid/widget/TextView;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->c:Lcom/ushaqi/zhuishushenqi/ui/feed/f;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->c:Lcom/ushaqi/zhuishushenqi/ui/feed/f;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/f;->a(Lcom/ushaqi/zhuishushenqi/ui/feed/f;Landroid/widget/TextView;)V

    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setFeeding(Z)V

    .line 133
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setFeedFat(Z)V

    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->addAccountInfo(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 136
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/n;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/g;->b:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 137
    return-void
.end method
