.class public final Luk/me/lewisdeane/ldialogs/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/content/DialogInterface$OnClickListener;

.field public c:Landroid/content/DialogInterface$OnClickListener;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field private i:Landroid/content/res/Resources;

.field private j:Landroid/view/View;

.field private k:[Ljava/lang/CharSequence;

.field private l:Landroid/content/DialogInterface$OnClickListener;

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/me/lewisdeane/ldialogs/h;->n:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->h:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/h;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->i:Landroid/content/res/Resources;

    .line 33
    return-void
.end method

.method static synthetic a(Luk/me/lewisdeane/ldialogs/h;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->l:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private c(I)F
    .locals 2

    .prologue
    .line 219
    int-to-float v0, p1

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    .line 1076
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->k:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->k:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 1142
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->k:[Ljava/lang/CharSequence;

    iget-object v2, p0, Luk/me/lewisdeane/ldialogs/h;->k:[Ljava/lang/CharSequence;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    new-instance v0, Luk/me/lewisdeane/ldialogs/e;

    iget-object v2, p0, Luk/me/lewisdeane/ldialogs/h;->a:Landroid/content/Context;

    iget-object v3, p0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Luk/me/lewisdeane/ldialogs/e;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1207
    iget-boolean v1, p0, Luk/me/lewisdeane/ldialogs/h;->n:Z

    .line 1078
    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/e;->setCancelable(Z)V

    .line 1079
    new-instance v1, Luk/me/lewisdeane/ldialogs/i;

    invoke-direct {v1, p0, v0}, Luk/me/lewisdeane/ldialogs/i;-><init>(Luk/me/lewisdeane/ldialogs/h;Luk/me/lewisdeane/ldialogs/e;)V

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/e;->a(Luk/me/lewisdeane/ldialogs/g;)Luk/me/lewisdeane/ldialogs/e;

    .line 1090
    :cond_0
    :goto_0
    return-object v0

    .line 1089
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5

    .line 2098
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 2099
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2207
    iget-boolean v1, p0, Luk/me/lewisdeane/ldialogs/h;->n:Z

    .line 2100
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 2101
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2102
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2103
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->f:Ljava/lang/String;

    iget-object v2, p0, Luk/me/lewisdeane/ldialogs/h;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2105
    :cond_2
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2106
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->g:Ljava/lang/String;

    iget-object v2, p0, Luk/me/lewisdeane/ldialogs/h;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2108
    :cond_3
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->j:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 2109
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2111
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 3115
    :cond_5
    new-instance v0, Luk/me/lewisdeane/ldialogs/CustomDialog;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/CustomDialog;-><init>(Luk/me/lewisdeane/ldialogs/h;)V

    .line 3116
    new-instance v1, Luk/me/lewisdeane/ldialogs/j;

    invoke-direct {v1, p0, v0}, Luk/me/lewisdeane/ldialogs/j;-><init>(Luk/me/lewisdeane/ldialogs/h;Luk/me/lewisdeane/ldialogs/CustomDialog;)V

    .line 3131
    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a(Luk/me/lewisdeane/ldialogs/c;)Luk/me/lewisdeane/ldialogs/CustomDialog;

    .line 3133
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->j:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3134
    iget-object v1, p0, Luk/me/lewisdeane/ldialogs/h;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/CustomDialog;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/CustomDialog;

    goto :goto_0
.end method

.method public final a(I)Luk/me/lewisdeane/ldialogs/h;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v0, p2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/h;->j:Landroid/view/View;

    .line 170
    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;
    .locals 0

    .prologue
    .line 152
    .line 1056
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/h;->f:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Luk/me/lewisdeane/ldialogs/h;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    return-object p0
.end method

.method public final a(Z)Luk/me/lewisdeane/ldialogs/h;
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Luk/me/lewisdeane/ldialogs/h;->n:Z

    .line 194
    return-object p0
.end method

.method public final a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/h;->k:[Ljava/lang/CharSequence;

    .line 175
    iput-object p2, p0, Luk/me/lewisdeane/ldialogs/h;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 176
    return-object p0
.end method

.method public final b()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 189
    return-object v0
.end method

.method public final b(I)Luk/me/lewisdeane/ldialogs/h;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Luk/me/lewisdeane/ldialogs/h;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0, p2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;
    .locals 3

    .prologue
    .line 211
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Luk/me/lewisdeane/ldialogs/h;->c(I)F

    move-result v0

    float-to-int v0, v0

    .line 212
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Luk/me/lewisdeane/ldialogs/h;->c(I)F

    move-result v1

    float-to-int v1, v1

    .line 213
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 214
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/h;->j:Landroid/view/View;

    .line 215
    return-object p0
.end method

.method public final b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;
    .locals 0

    .prologue
    .line 163
    .line 1061
    iput-object p1, p0, Luk/me/lewisdeane/ldialogs/h;->g:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Luk/me/lewisdeane/ldialogs/h;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 165
    return-object p0
.end method

.method public final b(Z)Luk/me/lewisdeane/ldialogs/h;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Luk/me/lewisdeane/ldialogs/h;->m:Z

    .line 203
    return-object p0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Luk/me/lewisdeane/ldialogs/h;->m:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Luk/me/lewisdeane/ldialogs/h;->n:Z

    return v0
.end method
