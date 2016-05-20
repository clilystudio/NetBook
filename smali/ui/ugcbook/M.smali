.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Ljava/util/List;Lcom/ushaqi/zhuishushenqi/model/BookSummary;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/M;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/M;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/M;->b:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/M;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/M;->b:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/M;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V

    .line 259
    return-void
.end method
