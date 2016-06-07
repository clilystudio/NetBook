.class final Lcom/umeng/update/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/umeng/update/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcom/umeng/update/UpdateDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/m;->a:Lcom/umeng/update/UpdateDialogActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/update/m;->a:Lcom/umeng/update/UpdateDialogActivity;

    iput-boolean p2, v0, Lcom/umeng/update/UpdateDialogActivity;->b:Z

    .line 73
    return-void
.end method
