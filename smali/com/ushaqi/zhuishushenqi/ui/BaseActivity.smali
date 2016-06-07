.class public Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field protected d:Lcom/ushaqi/zhuishushenqi/api/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 47
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->d:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 81
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/J;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/J;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a:Landroid/content/BroadcastReceiver;

    .line 431
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 335
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 336
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 337
    const v0, 0x7f0c0048

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const v0, 0x7f0c0095

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/R;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/R;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void
.end method

.method protected static e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 2

    .prologue
    .line 400
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    .line 401
    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/MyApplication;->a:Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    if-nez v1, :cond_0

    .line 402
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;-><init>()V

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/MyApplication;->a:Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    .line 404
    :cond_0
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/MyApplication;->a:Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    return-object v0
.end method


# virtual methods
.method public final a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 133
    return-void
.end method

.method public final a(ILjava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/ab;)V
    .locals 4

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 224
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 225
    const v0, 0x7f0c0048

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    const v0, 0x7f0c0095

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/K;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/K;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v0, 0x7f0c0090

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    const v1, 0x7f0c0091

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 234
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const v3, 0x7f02016f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/L;

    invoke-direct {v3, p0, p4}, Lcom/ushaqi/zhuishushenqi/ui/L;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/ab;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/M;

    invoke-direct {v0, p0, p4}, Lcom/ushaqi/zhuishushenqi/ui/M;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/ab;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 249
    return-void
.end method

.method public final a(ILjava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 137
    return-void
.end method

.method public final a(Ljava/lang/String;IILcom/ushaqi/zhuishushenqi/ui/ab;)V
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 195
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 196
    const v0, 0x7f0c0048

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const v0, 0x7f0c0095

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/X;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/X;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v0, 0x7f0c0092

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 204
    const v1, 0x7f0c0093

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 205
    const v3, 0x7f05016b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 206
    const v3, 0x7f050150

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 207
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/Y;

    invoke-direct {v3, p0, p4}, Lcom/ushaqi/zhuishushenqi/ui/Y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/ab;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/Z;

    invoke-direct {v0, p0, p4}, Lcom/ushaqi/zhuishushenqi/ui/Z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/ab;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 220
    return-void
.end method

.method public final a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;)V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 141
    return-void
.end method

.method public final a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 286
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 287
    const v0, 0x7f0c0048

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const v0, 0x7f0c0095

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/P;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/P;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v0, 0x7f0c00c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 295
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/Q;

    invoke-direct {v2, p0, p3}, Lcom/ushaqi/zhuishushenqi/ui/Q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 304
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 145
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 146
    const v0, 0x7f0c0048

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const v0, 0x7f0c0095

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/S;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/S;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0c0090

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/T;

    invoke-direct {v2, p0, p3}, Lcom/ushaqi/zhuishushenqi/ui/T;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->b(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public final b(IILcom/ushaqi/zhuishushenqi/ui/aa;)V
    .locals 5

    .prologue
    .line 260
    const v0, 0x7f050115

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02016a

    .line 3264
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 3265
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3266
    const v0, 0x7f0c0048

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3267
    const v0, 0x7f0c0095

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/N;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/N;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3273
    const v0, 0x7f0c00c7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3274
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3275
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/O;

    invoke-direct {v1, p0, p3}, Lcom/ushaqi/zhuishushenqi/ui/O;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3281
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 1327
    const v0, 0x7f030003

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a(Ljava/lang/String;I)V

    .line 119
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Z)V

    .line 372
    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->b(Z)V

    .line 373
    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->c(Z)V

    .line 374
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->d(Z)V

    .line 375
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 123
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1331
    const v1, 0x7f030004

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a(Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 2331
    const v0, 0x7f030004

    invoke-direct {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a(Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 388
    const v0, 0x7f0501a1

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    .line 389
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 390
    return-void
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 363
    .line 5347
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_0

    .line 365
    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 307
    .line 3347
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    .line 307
    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 323
    .line 4347
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    .line 323
    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 409
    .line 6347
    :try_start_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    .line 410
    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 254
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_OPEN_HOME_WHEN_CLOSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 257
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v0, "customer_night_theme"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->setTheme(I)V

    .line 1075
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1076
    const-string v1, "broadcastOnThemeChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1077
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void

    .line 57
    :cond_0
    const v0, 0x7f0700ae

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->setTheme(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 101
    invoke-static {p0}, Lcom/umeng/a/b;->a(Landroid/content/Context;)V

    .line 102
    invoke-static {p0}, Lcom/a/a/a;->b(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->b()V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 93
    invoke-static {p0}, Lcom/umeng/a/b;->b(Landroid/content/Context;)V

    .line 94
    invoke-static {p0}, Lcom/a/a/a;->a(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/mistatistic/sdk/b;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setCustomActionBar(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 379
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 380
    return-void
.end method
