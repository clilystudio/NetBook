.class public final Lcom/ushaqi/zhuishushenqi/view/a;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0700c0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/view/a;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/view/a;->a:Landroid/view/View;

    .line 50
    return-object p0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1041
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/view/a;->setCanceledOnTouchOutside(Z)V

    .line 1042
    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1043
    const v0, 0x7f0c01f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1044
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/view/a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1045
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/view/a;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 34
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 35
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 36
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 37
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/view/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    return-void
.end method
