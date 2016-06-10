.class final Lcom/ushaqi/zhuishushenqi/adapter/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/util/ai;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;Landroid/widget/TextView;Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;)V
    .locals 0

    .prologue
    .line 80
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/s;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/adapter/s;->b:Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/s;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/s;->b:Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;

    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->setPostCount(I)V

    .line 86
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->getVisitCount()I

    move-result v0

    .line 87
    sub-int v0, p2, v0

    .line 88
    if-lez v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/s;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/s;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/s;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
