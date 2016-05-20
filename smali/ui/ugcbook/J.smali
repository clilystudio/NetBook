.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

.field private synthetic b:Landroid/widget/EditText;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;Lcom/ushaqi/zhuishushenqi/model/BookSummary;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/J;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/J;->a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/J;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/J;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/J;->a:Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/J;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method
