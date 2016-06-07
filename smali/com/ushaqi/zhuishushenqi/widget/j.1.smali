.class public final Lcom/ushaqi/zhuishushenqi/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/j;->a:Landroid/app/AlertDialog$Builder;

    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/j;->a:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u662f\u5426\u8df3\u8f6c\u81f3\u300c17k \u5c0f\u8bf4\u7f51\u300d\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/j;->a:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/j;->a:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/k;

    invoke-direct {v2, p0, p2, p1}, Lcom/ushaqi/zhuishushenqi/widget/k;-><init>(Lcom/ushaqi/zhuishushenqi/widget/j;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/j;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 44
    return-void
.end method
