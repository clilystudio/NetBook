.class final Lcom/ushaqi/zhuishushenqi/ui/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/X;->a:Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/X;->a:Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    .line 201
    return-void
.end method
