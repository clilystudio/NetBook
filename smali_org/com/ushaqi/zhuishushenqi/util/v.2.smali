.class final Lcom/ushaqi/zhuishushenqi/util/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/v;->a:Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/v;->a:Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;->dismiss()V

    .line 95
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/r;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/r;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "book_recommend_gender_click"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
