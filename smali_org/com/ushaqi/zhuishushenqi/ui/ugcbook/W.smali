.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/W;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/W;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 91
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/W;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/W;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 101
    :cond_2
    const-class v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/D;

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/event/D;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/W;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->finish()V

    .line 104
    return-void
.end method
