.class final Lcom/ushaqi/zhuishushenqi/widget/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/SendView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/SendView;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ay;->a:Lcom/ushaqi/zhuishushenqi/widget/SendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ay;->a:Lcom/ushaqi/zhuishushenqi/widget/SendView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/SendView;->a(Lcom/ushaqi/zhuishushenqi/widget/SendView;)V

    .line 44
    return-void
.end method
