.class final Lcom/ushaqi/zhuishushenqi/adapter/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/o;Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;)V
    .locals 0

    .prologue
    .line 58
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/p;->a:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/adapter/p;->b:Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/p;->a:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/p;->a:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/p;->b:Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;

    .line 62
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v2

    .line 61
    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Author;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method
