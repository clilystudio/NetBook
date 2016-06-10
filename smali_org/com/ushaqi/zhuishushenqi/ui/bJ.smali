.class final Lcom/ushaqi/zhuishushenqi/ui/bJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 296
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const-string v1, "\u8bf7\u8f93\u5165\u8981\u641c\u7d22\u7684\u5173\u952e\u5b57"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 301
    :goto_0
    return v2

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bJ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0, v2, v2}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;ZZ)V

    goto :goto_0
.end method
