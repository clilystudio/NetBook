.class final Lcom/ushaqi/zhuishushenqi/ui/bA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bA;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/bA;->a:Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bA;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bA;->a:Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    const-string v2, "\u4f60\u53ef\u80fd\u611f\u5174\u8da3"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/bA;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bA;->b:Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method
