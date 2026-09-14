.class Lcom/joyemu/fba/FbaActivity$a;
.super Landroid/widget/PopupWindow;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/joyemu/fba/FbaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/ImageView;

.field k:Landroid/view/View;

.field private l:Landroid/view/View$OnClickListener;

.field final synthetic m:Lcom/joyemu/fba/FbaActivity;


# direct methods
.method public constructor <init>(Lcom/joyemu/fba/FbaActivity;Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/joyemu/fba/FbaActivity$a;->m:Lcom/joyemu/fba/FbaActivity;

    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/joyemu/fba/n;

    invoke-direct {v0, p0}, Lcom/joyemu/fba/n;-><init>(Lcom/joyemu/fba/FbaActivity$a;)V

    iput-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0040

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f09004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->a:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f09004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f09003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f09003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f090038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f090039

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->f:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f090046

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->g:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f090047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f090045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->i:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    const v0, 0x7f090048

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->j:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/joyemu/fba/FbaActivity$a;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/joyemu/fba/FbaActivity$a;->j:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/joyemu/fba/FbaActivity;->s:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/joyemu/fba/FbaActivity$a;->k:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method
