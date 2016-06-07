.class final Lcom/ushaqi/zhuishushenqi/ui/bF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bF;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bF;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    .line 197
    const/4 v0, 0x0

    return v0
.end method
